import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ServisAPI {
  // lokasi json API
  static const String _baseUrl = 'http://jsonplaceholder.typicode.com';

  // untuk memngambil value yang adanya nanti, {terhalang jaringan, load time/ saat ini value belum ada} maka pakai future
  Future<List<dynamic>> fetchPosts() async {
    final response = await http.get(Uri.parse('$_baseUrl/photos'));

    // karena menggunakan http, maka kita tanggap saja statuscode

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Gagal load');
    }
  }
}
