import 'dart:convert';
import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'BAF3A6A1-5DEC-4A6B-8B21-693227231D76';

class CoinData1 {
  Future getCoinData1(String name) async {
    String requestURL = '$coinAPIURL/BTC/$name?apikey=$apiKey';
    var response = await http.get(
      Uri.parse(requestURL),
    );
    print('Response status: ${response.statusCode}');
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      double lastPrice = decodedData['rate'];
      return lastPrice.toStringAsFixed(0);
    } else {
      print(response.statusCode);
      throw 'Problem with the get request';
    }
  }
}

class CoinData2 {
  Future getCoinData2(String name) async {
    String requestURL = '$coinAPIURL/ETH/$name?apikey=$apiKey';
    var response = await http.get(
      Uri.parse(requestURL),
    );
    print('Response status: ${response.statusCode}');
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      double lastPrice = decodedData['rate'];
      return lastPrice.toStringAsFixed(0);
    } else {
      print(response.statusCode);
      throw 'Problem with the get request';
    }
  }
}

class CoinData3 {
  Future getCoinData3(String name) async {
    String requestURL = '$coinAPIURL/LTC/$name?apikey=$apiKey';
    var response = await http.get(
      Uri.parse(requestURL),
    );
    print('Response status: ${response.statusCode}');
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      double lastPrice = decodedData['rate'];
      return lastPrice.toStringAsFixed(0);
    } else {
      print(response.statusCode);
      throw 'Problem with the get request';
    }
  }
}
