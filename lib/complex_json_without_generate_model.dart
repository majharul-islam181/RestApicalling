import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ComplexJsonWithoutModel extends StatefulWidget {
  @override
  State<ComplexJsonWithoutModel> createState() =>
      _ComplexJsonWithoutModelState();
}

class _ComplexJsonWithoutModelState extends State<ComplexJsonWithoutModel> {
  var data;
  Future<void> getC() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Complex Json without Generated Model')),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder(
            future: getC(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Text("Loading......");
              } else {
                return ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Column(
                          children: [
                            Re_Usable_Row(
                                name: data[index]['name'].toString(),
                                address:
                                    data[index]['address']['city'].toString()),
                          ],
                        ),
                      );
                    });
              }
            },
          ))
        ],
      ),
    );
  }
}

class Re_Usable_Row extends StatelessWidget {
  String name = "empty", address;
  Re_Usable_Row({super.key, required this.name, required this.address});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('name : '),
        const SizedBox(
          width: 20,
        ),
        Text(name),
        const SizedBox(
          width: 20,
        ),
        Text(address),
      ],
    );
  }
}
