#include <ESP8266WiFi.h>
#include <WiFiManager.h>
#include <Adafruit_Sensor.h>
#include "DHT.h"

#define DHTPIN 12        // Pin data sensor DHT11 terhubung ke GPIO D6 pada NodeMCU (Lihat ESP8266 Pinout)
#define DHTTYPE DHT11   // Tipe sensor DHT yang digunakan (DHT11 atau DHT22)

#define FIREPIN 14      // Pin output sensor api terhubung ke GPIO D5 pada NodeMCU (Lihat ESP8266 Pinout)

DHT dht(DHTPIN, DHTTYPE);

// Ganti IP (192.168.1.18) dengan IP laptop anda. Direkomendasikan menggunakan hotspot HP daripada Wi-Fi Kampus
// Gunakan task manager untuk melihat IP laptop anda.
const char* serverHost = "192.168.229.49"; // Ganti dengan alamat IP server Anda
const int serverPort = 80; // Ganti dengan port yang sesuai jika tidak menggunakan port 80

void setup() {
  // Inisialisasi serial untuk output debugging
  Serial.begin(9600);
  
  // Menghubungkan ke jaringan WiFi menggunakan WiFiManager
  WiFiManager wifiManager;

  // Gunakan sintaks dibawah untuk mereset jaringan, komentar sintaks dibawah jika sudah digunakan
  //  wifiManager.resetSettings();
  wifiManager.autoConnect("NodeMCU-AP"); // Jika tidak ada koneksi yang tersimpan, NodeMCU akan membuat akses point dengan SSID 'NodeMCU-AP'
  
  // Inisialisasi sensor DHT11
  dht.begin();

  // Mengatur pin sebagai input untuk sensor api
  pinMode(FIREPIN, INPUT);
}

void loop() {
  // Sensor readings may also be up to 2 seconds 'old' (its a very slow sensor)
  float hum = dht.readHumidity();
  // Membaca suhu dalam satuan Celcius
  float temp = dht.readTemperature();
//  Serial.print(F("Humidity: "));
//  Serial.print(hum);
//  Serial.print(F("%  Temperature: "));
//  Serial.print(temp);
//  Serial.println();

  // Mengecek apakah DHT11 terbaca dengan baik
  if (isnan(hum) || isnan(temp)) {
    Serial.println(F("Failed to read from DHT sensor!"));
    delay(500);
    return;
  }

  // Membaca status sensor api (digital output)
  String fireStatus = String(digitalRead(FIREPIN));

  // Mengubah Status menjadi teks status
  if (fireStatus == "1") {
    fireStatus = "Aktif";
  } else {
    fireStatus = "Nonaktif";
  }

  // Mengirim data melalui HTTP GET request ke server
  sendGETRequest(temp, hum, fireStatus);

  // Jeda 1 detik sebelum mengirim data lagi
  delay(1000);
}

void sendGETRequest(float temperature, float humidity, String fireStatus) {
  // Buat koneksi WiFiClient
  WiFiClient client;
  
  // Buat URL dengan data sensor
  String url = "http://";
  url += serverHost;
  url += "/fp-iot/stream/esp32.php";
  url += "?temperature=" + String(temperature);
  url += "&humidity=" + String(humidity);
  url += "&fireStatus=" + String(fireStatus);

  Serial.println("Sending GET request to: " + url);

  // Koneksi ke server
  if (client.connect(serverHost, serverPort)) {
    // Kirim HTTP GET request
    client.print("GET " + url + " HTTP/1.1\r\n");
    client.print("Host: " + String(serverHost) + "\r\n");
    client.print("Connection: close\r\n\r\n");
    client.println();
    delay(10);

    // Tunggu hingga koneksi ditutup
    while (client.connected()) {
      if (client.available()) {
        String line = client.readStringUntil('\r');
        Serial.print(line);
      }
    }

    // Tutup koneksi
    client.stop();
  } else {
    Serial.println("Connection to server failed");
  }
}
