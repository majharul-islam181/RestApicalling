import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class customModel extends StatefulWidget {
  const customModel({super.key});

  @override
  State<customModel> createState() => _customModelState();
}

class _customModelState extends State<customModel> {
  List<Photos> photosList = [];

  Future<List<Photos>> getPhotos() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      Map()
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Model with APi')),
      body: Column(
        children: [],
      ),
    );
  }
}

class Photos {
  int id;
  String title;
  String url;

  Photos({required this.id, required this.title, required this.url});
}
