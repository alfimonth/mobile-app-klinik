import 'package:flutter/material.dart';
import 'package:aplikasi_flutter_pertamaku/api_service.dart';

class Api extends StatelessWidget {
  const Api({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test Doank')),
      body: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(16.0),
          childAspectRatio: 8.0 / 9.0,
          children: const [PostList()], // Replace
          ),
    );
  }
}

class PostList extends StatefulWidget {
  const PostList({Key? key});

  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  late Future<List<dynamic>> _posts;

  @override
  void initState() {
    super.initState();

    // inisiasi variabel _posts yang merupakan pemanggilan fungsi 'fetchPosts() di class servisapi()
    _posts = GetApiLaravel().getProduk();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: _posts,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final item = snapshot.data![index];
              return Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 18.0 / 11.0,
                      child: Image.asset('assets/img/1.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(item['nama_produk']),
                          SizedBox(height: 8.0),
                          Text(item['harga']),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Center(child: Text('${snapshot.error}'));
        }
        return Center(child: CircularProgressIndicator(color: Colors.blue));
      },
    );
  }
}

