import 'package:dio/dio.dart';
import '../helpers/api_client.dart';
import '../model/pegawai.dart';

class PegawaiService {
  Future<List<Pegawai>> listData() async {
    final Response response = await ApiClient().get('pegawai');
    final List data = response.data as List;
    List<Pegawai> result = data.map((json) => Pegawai.fromJson(json)).toList();
    return result;
  }

  Future<Pegawai> simpan(Pegawai pegawai) async {
    var data = pegawai.toJson();
    final Response response = await ApiClient().post('pegawai', data);
    Pegawai result = Pegawai.fromJson(response.data);
    return result;
  }

  Future<Pegawai> ubah(Pegawai pegawai, String id) async {
    var data = pegawai.toJson();
    final Response response = await ApiClient().put('pegawai/${id}', data);
    Pegawai result = Pegawai.fromJson(response.data);
    return result;
  }

  Future<Pegawai> getById(String id) async {
    final Response response = await ApiClient().get('pegawai/${id}');
    Pegawai result = Pegawai.fromJson(response.data);
    return result;
  }

  Future<Pegawai> hapus(Pegawai pegawai) async {
    final Response response = await ApiClient().delete('pegawai/${pegawai.id}');
    Pegawai result = Pegawai.fromJson(response.data);
    return result;
  }
}
