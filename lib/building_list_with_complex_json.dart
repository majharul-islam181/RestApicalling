import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food/Model/for_complex_model.dart';
import 'package:http/http.dart' as http;

class ComplexJson extends StatefulWidget {
  const ComplexJson({super.key});

  @override
  State<ComplexJson> createState() => _ComplexJsonState();
}

class _ComplexJsonState extends State<ComplexJson> {
  List<complex_model> cList = [];
  Future<List<complex_model>> getComplexApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        cList.add(complex_model.fromJson(i));
      }
      return cList;
    } else {
      return cList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Complex Json')),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getComplexApi(),
                builder:
                    (context, AsyncSnapshot<List<complex_model>> snapshot) {
                  if (!snapshot.hasData) {
                    return const CircularProgressIndicator();
                  } else {
                    return ListView.builder(
                        itemCount: cList.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Column(
                              children: [
                                Re_Usable_Row(
                                    name: snapshot.data![index].name.toString(),
                                    address: snapshot.data![index].address!.city
                                        .toString())
                              ],
                            ),
                          );
                        });
                  }
                }),
          )
        ],
      ),
    );
  }
}

class Re_Usable_Row extends StatelessWidget {
  String name, address;
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
