import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Album> fetchAlbum() async {

  final response = await http
      .get(Uri.parse('https://api.yelp.com/v3/businesses/search?term=delis&latitude=37.786882&longitude=-122.399972'),
      headers:{
        HttpHeaders.authorizationHeader: 'Bearer ' + 'WLiWrkkJtPiTTEY2TrZEvLfEOAAKWWciaRRSw2-RHEmBLykkuBeXjpACXhhzJWOJ5yawtyzoxUr_9ovAYsRpTYMGpr6ZKRPsCbx-cCxw8cgqkjiKemCAQgIs3ex-Y3Yx'
      },);

  /*if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));

  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    //throw Exception('Failed to load album');
    print(response.statusCode);
    return Album.fromJson(jsonDecode(response.body));*/
  final responseJson = jsonDecode(response.body);
  print(response.body);
  return Album.fromJson(responseJson);

  //}
}

class Album {
  final int total;

  const Album({
    required this.total,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      total: json['total'],
    );
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.total.toString());
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}