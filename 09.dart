import 'dart:io';
import 'dart:convert';

const urlApi = "https://swapi.py4e.com/api/planets/";

void main() {
  loadDataPromise();
}

Future loadDataAwait() async {
  HttpClientRequest request = await HttpClient().getUrl(Uri.parse(urlApi));
  HttpClientResponse response = await request.close();
  String data = await response.transform(Utf8Decoder()).join();
  processData(data);
}

void processData(String data) {
  Map<String, dynamic> jsonData = jsonDecode(data);
  List<dynamic> records = jsonData['results'];
  print(records[0]);
  for (var record in records) {
    print("${record['name']} ${record['population']}");
  }
}

Future loadDataPromise() async {
  try {
    HttpClient()
      .getUrl(Uri.parse(urlApi))
      .then((request) => request.close())
      .then((response) => response.transform(Utf8Decoder()).join())
      .then((data) {
        print(data);
      });
  } catch (error) {
    print(error);
  }
}