import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class APIService {
  final String
      _url = 'http://kitchenhome.softssolutionservice.com/api/v1/' /*'https://www.onlinepropertytaxhelp.com/billingapp/'*/;

  postData(data, apiUrl) async {
    var fullUrl = _url + apiUrl /*+ await _getToken()*/;
    return await http.post(Uri.parse(fullUrl),
        body: jsonEncode(data) , headers: _setHeaders());
  }

  getData(apiUrl) async {
    var fullUrl = _url + apiUrl + await _getToken();
    return await http.get(Uri.parse(fullUrl), headers: _setHeaders());
  }

  _setHeaders() => {
        'Content-type': 'application/json',
        'X-Requested-With': 'XMLHttpRequest',
      };

  _getToken() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    return '?token=$token';
  }
}
