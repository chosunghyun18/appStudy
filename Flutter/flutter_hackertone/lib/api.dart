import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Album> fetchAlbum() async {
  final response = await http.get(Uri.parse(
      "https://1e85ce8f-6ffc-402d-9365-0576000728de.mock.pstmn.io/api/Facility"));
  //print(response.statusCode);
  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    String jsonData = response.body;
    var myJson = jsonDecode(jsonData)['data'][0]['f_name'];
    //print(myJson);
    return Album.fromJson(jsonDecode(jsonData));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load data');
  }
}

class Album {
  final int count;
  final List<Data> data;

  const Album({
    // required this.u_username,
    required this.count,
    required this.data,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    var list = json['data'] as List;
    List<Data> dataList = list.map((i) => Data.fromJson(i)).toList();
    print(list);
    return Album(count: json['count'], data: dataList);
  }
}

class Data {
  final String f_name;
  final String f_intro;
  final int f_minimal;
  final String f_home;
  final String f_ars;
  final String f_phone;
  final String f_pay;
  final String f_logo;

  Data({
    required this.f_name,
    required this.f_intro,
    required this.f_minimal,
    required this.f_home,
    required this.f_ars,
    required this.f_phone,
    required this.f_pay,
    required this.f_logo,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
        f_name: json['f_name'],
        f_intro: json['f_intro'],
        f_minimal: json['f_minimal'],
        f_home: json['f_home'],
        f_ars: json['f_ars'],
        f_phone: json['f_phone'],
        f_pay: json['f_pay'],
        f_logo: json['f_logo']);

  }
}


void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
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
                return Container(child:Row(
                  children: [
                    Text(snapshot.data!.data[0].f_name),
                    //,Text(snapshot.data!.data[1].f_name)
                    //,Text(snapshot.data!.data[2].f_name)
                  ],
                ),
                );
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