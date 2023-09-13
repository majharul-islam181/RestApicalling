import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food/Model/object_based_model.dart';
import 'package:http/http.dart' as http;

class ObjectBased extends StatefulWidget {
  const ObjectBased({super.key});

  @override
  State<ObjectBased> createState() => _ObjectBasedState();
}

class _ObjectBasedState extends State<ObjectBased> {
  Future<object_base_json> getObjectJsonApi() async {
    final response = await http.get(
        Uri.parse('https://webhook.site/f2025245-2d44-4eda-b7f8-17f78ca001d2'));

    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return object_base_json.fromJson(data);
    } else {
      return object_base_json.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OBject Based')),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Expanded(
                child: FutureBuilder<object_base_json>(
              future: getObjectJsonApi(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data?.data!.length,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text(snapshot.data!.data![index].shop!.name
                                .toString()),
                            subtitle: Text(snapshot
                                .data!.data![index].shop!.shopemail
                                .toString()),
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(snapshot
                                  .data!.data![index].shop!.image
                                  .toString()),
                            ),
                          ),
                          Container(
                            clipBehavior: Clip.none,
                            height: MediaQuery.of(context).size.height * .3,
                            width: MediaQuery.of(context).size.width * 1,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount:
                                    snapshot.data!.data![index].images!.length,
                                itemBuilder: (context, position) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10.0, bottom: 10),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .25,
                                      width: MediaQuery.of(context).size.width *
                                          .4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(snapshot
                                                .data!
                                                .data![index]
                                                .images![position]
                                                .url
                                                .toString()),
                                          )),
                                    ),
                                  );
                                }),
                          )
                        ],
                      );
                    },
                  );
                } else {
                  return const Text('Loading........');
                }
              },
            )),
          ],
        ),
      ),
    );
  }
}
