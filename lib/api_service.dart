import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ServisAPI {
  // lokasi json API
  static const String _baseUrl = 'http://jsonplaceholder.typicode.com';
  // static const String _baseUrl = 'http://localhost:8000/api';

  // untuk memngambil value yang adanya nanti, {terhalang jaringan, load time/ saat ini value belum ada} maka pakai future
  Future<List<dynamic>> fetchPosts() async {
    final response = await http.get(Uri.parse('$_baseUrl/photos'));
    // final response = await http.get(Uri.parse('$_baseUrl/produk'));

    // karena menggunakan http, maka kita tanggap saja statuscode

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Gagal load');
    }
  }
}
class GetApiLaravel {
  // lokasi json API
  static const String _baseUrl = 'http://localhost:8000/api';

  // untuk memngambil value yang adanya nanti, {terhalang jaringan, load time/ saat ini value belum ada} maka pakai future
  Future<List<dynamic>> getProduk() async {
    final response = await http.get(Uri.parse('$_baseUrl/produk'));
    // final response = await http.get(Uri.parse('$_baseUrl/produk'));

    // karena menggunakan http, maka kita tanggap saja statuscode

    if (response.statusCode == 200) {
      return jsonDecode(response.body)['data'];
    } else {
      throw Exception('Gagal load');
    }
  }
}
