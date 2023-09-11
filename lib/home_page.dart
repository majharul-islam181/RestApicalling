import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food/Model/posts_model.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<postModels> postList = [];

  Future<List<postModels>> getPostApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        postList.add(postModels.fromJson(i));
      }
      return postList;
    } else {
      return postList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Api course')),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getPostApi(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Text("loaading");
                  } else {
                    return ListView.builder(
                      itemCount: postList.length,
                      itemBuilder: (context, index) {
                        return Text(postList[index].title.toString());
                      },
                    );
                  }
                }),
          )
        ],
      ),
    );
  }
}
