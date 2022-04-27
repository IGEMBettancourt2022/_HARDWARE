

#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <ESPAsyncTCP.h>
#include <ESPAsyncWebServer.h>
#include <AsyncElegantOTA.h>
#include <esp8266httpclient.h>
#include <ezOutput.h>

//DISPLAY RELATIVE
//Display is this one https://fr.aliexpress.com/item/33008480580.html?spm=a2g0s.9042311.0.0.3a0f6c37PWnIaR
//exemple code from here :https://randomnerdtutorials.com/esp8266-0-96-inch-oled-display-with-arduino-ide/

#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <Adafruit_I2CDevice.h>

//IOExtender
#include <Adafruit_MCP23017.h>

#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 32 // OLED display height, in pixels

const int analogInPin = A0; // ESP8266 Analog Pin ADC0 = A0
int opt101_Value = 0;       // value read from the pot

bool debug = false;

String myI2CDevices[10];
int i2CDeviceCount = 0;

String globalIP;

// network terminal
String ServerIP = "172.16.1.64";
String ServerPort = "1234";

//https://www.instructables.com/NE555-With-Arduino-Uno-R3/
int ne555 = 13; //attach to the third pin of NE555
// unsigned long duration1; //the variable to store the HIGH length of the pulse
// unsigned long duration2; //the variable to store the HIGH length of the pulse
// unsigned long dc;                //the variable to store the duty cycle

bool light_sensor_on = false;
bool timer_sensing_on = true;

int transistor_pin = 0;

float duration1; //the variable to store the HIGH length of the pulse
float duration2; //the variable to store the HIGH length of the pulse
float dc;
int Samplin_quantity = 10;
int delay_between_sanples = 500;
int delay_between_round = 1000;

// Declaration for an SSD1306 display connected to I2C (SDA, SCL pins)
#define OLED_RESET -1 // Reset pin # (or -1 if sharing Arduino reset pin)
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

#define NUMFLAKES 10 // Number of snowflakes in the animation example

#define LOGO_HEIGHT 16
#define LOGO_WIDTH 16
static const unsigned char PROGMEM logo_bmp[] =
    {B00000000, B11000000,
     B00000001, B11000000,
     B00000001, B11000000,
     B00000011, B11100000,
     B11110011, B11100000,
     B11111110, B11111000,
     B01111110, B11111111,
     B00110011, B10011111,
     B00011111, B11111100,
     B00001101, B01110000,
     B00011011, B10100000,
     B00111111, B11100000,
     B00111111, B11110000,
     B01111100, B11110000,
     B01110000, B01110000,
     B00000000, B00110000};

const char *ssid = "MEDICALEX";
const char *password = "FRANCEMED2018**";

bool ledState = 0;
const int ledPin = 2;

// Create AsyncWebServer object on port 80
AsyncWebServer server(80);
AsyncWebSocket ws("/ws");

char i2cList[] PROGMEM = "";

#pragma region HTML
const char index_html[] PROGMEM = R"rawliteral(
<!DOCTYPE HTML><html>
<head>
  <title>ESP Web Server</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="data:,">
  <style>
  html {
    font-family: Arial, Helvetica, sans-serif;
    text-align: center;
  }
  h1 {
    font-size: 1.8rem;
    color: white;
  }
  h2{
    font-size: 1.5rem;
    font-weight: bold;
    color: #143642;
  }
  .topnav {
    overflow: hidden;
    background-color: #143642;
  }
  body {
    margin: 0;
  }
  .content {
    padding: 30px;
    max-width: 600px;
    margin: 0 auto;
  }
  .card {
    background-color: #F8F7F9;;
    box-shadow: 2px 2px 12px 1px rgba(140,140,140,.5);
    padding-top:10px;
    padding-bottom:20px;
  }
  .button {
    padding: 15px 50px;
    font-size: 24px;
    text-align: center;
    outline: none;
    color: #fff;
    background-color: #0f8b8d;
    border: none;
    border-radius: 5px;
    -webkit-touch-callout: none;
    -webkit-user-select: none;
    -khtml-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
   }
   /*.button:hover {background-color: #0f8b8d}*/
   .button:active {
     background-color: #0f8b8d;
     box-shadow: 2 2px #CDCDCD;
     transform: translateY(2px);
   }
   .state {
     font-size: 1.5rem;
     color:#8c8c8c;
     font-weight: bold;
   }
  </style>
<title>ESP Web Server</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="data:,">
</head>
<body>
  <div class="topnav">
    <h1>ESP WebSocket Server</h1>
  </div>
  <div class="content">
    <div class="card">
      <h2>Output - GPIO 2</h2>
      <p class="state">state: <span id="state">%STATE%</span></p>
      <p><button id="button" class="button">Toggle</button></p>
      <p><button id="button" class="button" href="/close_claw" target="_blank">close_claw</button></p>
      <p><button id="button" class="button" href="/open_claw" target="_blank">open_claw</button></p>
      <p><button id="button" class="button" href="/update" target="_blank">update</button></p>
    </div>
  </div>
<script>
  var gateway = `ws://${window.location.hostname}/ws`;
  var websocket;
  window.addEventListener('load', onLoad);
  function initWebSocket() {
    console.log('Trying to open a WebSocket connection...');
    websocket = new WebSocket(gateway);
    websocket.onopen    = onOpen;
    websocket.onclose   = onClose;
    websocket.onmessage = onMessage; // <-- add this line
  }
  function onOpen(event) {
    console.log('Connection opened');
  }
  function onClose(event) {
    console.log('Connection closed');
    setTimeout(initWebSocket, 2000);
  }
  function onMessage(event) {
    var state;
    if (event.data == "1"){
      state = "ON";
    }
    else{
      state = "OFF";
    }
    document.getElementById('state').innerHTML = state;
  }
  function onLoad(event) {
    initWebSocket();
    initButton();
  }
  function initButton() {
    document.getElementById('button').addEventListener('click', toggle);
  }
  function toggle(){
    websocket.send('toggle');
  }
</script>
</body>
</html>)rawliteral";

#pragma endregion

#pragma region serverThings

void notifyClients()
{
  ws.textAll(String(ledState));
}

void handleWebSocketMessage(void *arg, uint8_t *data, size_t len)
{
  AwsFrameInfo *info = (AwsFrameInfo *)arg;
  if (info->final && info->index == 0 && info->len == len && info->opcode == WS_TEXT)
  {
    data[len] = 0;
    if (strcmp((char *)data, "toggle") == 0)
    {
      ledState = !ledState;
      notifyClients();
    }
  }
}

void onEvent(AsyncWebSocket *server, AsyncWebSocketClient *client, AwsEventType type,
             void *arg, uint8_t *data, size_t len)
{
  switch (type)
  {
  case WS_EVT_CONNECT:
    Serial.printf("WebSocket client #%u connected from %s\n", client->id(), client->remoteIP().toString().c_str());
    break;
  case WS_EVT_DISCONNECT:
    Serial.printf("WebSocket client #%u disconnected\n", client->id());
    break;
  case WS_EVT_DATA:
    handleWebSocketMessage(arg, data, len);
    break;
  case WS_EVT_PONG:
  case WS_EVT_ERROR:
    break;
  }
}

void initWebSocket()
{
  ws.onEvent(onEvent);
  server.addHandler(&ws);
}

String processor(const String &var)
{
  Serial.println(var);
  if (var == "STATE")
  {
    if (ledState)
    {
      return "ON";
    }
    else
    {
      return "OFF";
    }
  }
  return String();
}
#pragma endregion

#pragma region DisplayFunctions

void Display_variables()
{
  display.clearDisplay();

  // display.setTextSize(1);             // Draw 2X-scale text
  // display.setTextColor(BLACK, WHITE); // Draw white text
  // display.println(ssid);

  // display.setTextSize(1);      // Normal 1:1 pixel scale
  // display.setTextColor(WHITE); // Draw white text
  // display.setCursor(0, 0);     // Start at top-left corner
  // display.println("IP ADDRESS:");

  // display.setTextSize(1); // Draw 2X-scale text
  // display.setTextColor(BLACK, WHITE);
  // display.println(globalIP);

  display.setTextSize(1); // Normal 1:1 pixel scale
  display.setTextColor(BLACK, WHITE);
  display.setCursor(0, 0); // Start at top-left corner
  display.println("DC:");

  display.setTextSize(1);      // Draw 2X-scale text
  display.setTextColor(WHITE); // Draw white text
  display.println(dc);

  display.setTextSize(1); // Normal 1:1 pixel scale
  display.setTextColor(BLACK, WHITE);
  display.println("dur1:");

  display.setTextSize(1);      // Draw 2X-scale text
  display.setTextColor(WHITE); // Draw white text
  display.println(duration1);

  display.setTextSize(1); // Normal 1:1 pixel scale
  display.setTextColor(BLACK, WHITE);
  display.println("dur2:");

  display.setTextSize(1);      // Draw 2X-scale text
  display.setTextColor(WHITE); // Draw white text
  display.println(duration2);

  display.display();
}

#pragma endregion

void printConnectedDevice()
{
  for (size_t i = 0; i < i2CDeviceCount; i++)
  {
    String device = "i2c device at: " + myI2CDevices[i];
    Serial.println(device);
  }
}

void initialize()
{

  //networkTerminalLoop.blink(ping_interval, ping_interval); //comment if not necessary

  // SSD1306_SWITCHCAPVCC = generate display voltage from 3.3V internally
  if (!display.begin(SSD1306_SWITCHCAPVCC, 0x3C))
  {
    Serial.println(F("SSD1306 allocation failed"));
    for (;;)
      ; // Don't proceed, loop forever
  }

  // Show initial display buffer contents on the screen --
  // the library initializes this with an Adafruit splash screen.
  display.display();
  delay(100); //

  // Clear the buffer
  display.clearDisplay();

  pinMode(ledPin, OUTPUT);
  digitalWrite(ledPin, LOW);

  //if specific IP address on network address
  /*
  //https://randomnerdtutorials.com/esp8266-nodemcu-static-fixed-ip-address-arduino/
  if (!WiFi.config(local_IP, gateway, subnet, primaryDNS, secondaryDNS))
  {
    Serial.println("STA Failed to configure");
  }
  */

  //http client:

  // Connect to Wi-Fi
  WiFi.begin(ssid, password);
  int count = 0;
  while (WiFi.status() != WL_CONNECTED)
  {
    delay(1000);
    Serial.println("Connecting to WiFi..");
    count = count + 1;

    if (count > 10)
    {
      ESP.restart();
    }
  }

  // Print ESP Local IP Address
  Serial.println(WiFi.localIP());

  Display_variables();
  initWebSocket();
}

void serverRoutes()
{
  // Route for root / web page
  server.on("/", HTTP_GET, [](AsyncWebServerRequest *request) {
    request->send_P(200, "text/html", index_html, processor);
  });

  server.on("/test1", HTTP_GET, [](AsyncWebServerRequest *request) {
    //Serial.println("Reached /test1");
    request->send_P(200, "text/html", "OK");
  });

  server.on("/test", HTTP_GET, [](AsyncWebServerRequest *request) {
    //Serial.println("Reached /test");
    //printNetwork("Reached_/test");

    request->send_P(200, "text/html", "OK");
  });
}

void shutdown()
{
  ESP.deepSleep(0);
}

void setup()
{
  // Serial port for debugging purposes
  Serial.begin(115200);

  initialize();
  serverRoutes();

  // Start ElegantOTA
  AsyncElegantOTA.begin(&server);
  // Start server
  server.begin();
  Serial.println("Server begin");
  //printNetwork("Hello_from_ESP");
  delay(100);

  pinMode(ne555, INPUT); //set the ne555 as an input
  pinMode(transistor_pin, OUTPUT);
  Serial.println("init");
}

void loop()
{
  Serial.println("up");
  //Display_variables();
  //AsyncElegantOTA.loop();
  ws.cleanupClients();
  digitalWrite(ledPin, ledState);

  //networkTerminal();
  //shutdown();

  // digitalWrite(transistor_pin, HIGH);
  // delay(1000);
  // digitalWrite(transistor_pin, LOW);
  // delay(1000);

  if (timer_sensing_on)
  {
    ///////////Electrical conductivity test/////////////
    float DCs[Samplin_quantity];
    digitalWrite(transistor_pin, HIGH);
    Serial.println("transistor ON");
    delay(2000);
    for (size_t i = 0; i < Samplin_quantity; i++)
    {
      duration1 = pulseIn(ne555, HIGH); //Reads a pulse on ne555
      duration2 = pulseIn(ne555, LOW);

      dc = (duration1) / (duration1 + duration2) * 100;

      Serial.print("c,");
      Serial.print(dc); //print the length of the pulse on the seria monitor
      Serial.println(); //print an blank on serial monitor
      Display_variables();

      DCs[i] = dc;
      delay(delay_between_sanples);
    }
    float average = 0;
    float sum = 0;
    for (size_t i = 0; i < Samplin_quantity; i++)
    {
      sum += DCs[i];
    }

    average = sum / Samplin_quantity;
    String val = String(average, 2); // using a float and the decimal places
    String message = "d,";
    message = message + val;
    Serial.println(message);
    Serial.println("transistor OFF");
    digitalWrite(transistor_pin, LOW);
    delay(delay_between_round);
  }

  if (light_sensor_on)
  {
    // ///////////Electrical conductivity test/////////////

    //OPT101 value
    opt101_Value = analogRead(analogInPin);
    Serial.println("o," + String(opt101_Value));
    // message = "";
    // message = "o,";
    // message = message+ String(opt101_Value, 2);
    // Serial.println(message);
  }
}
