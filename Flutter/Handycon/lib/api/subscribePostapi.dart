import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart' as fbs;
import 'package:handycon/constants.dart';



class subspost{
  final _auth =fbs.FirebaseAuth.instance;
  var resultc = true;
      void postsubs(List<int> sublist) async{
        final user = await _auth.currentUser!;
        final String Authorization = user.uid as String;
        const String apiUrl = url+"subscribe";
        var requestbody = jsonEncode(
            {
              "fac_id": sublist
            });
        final response = await http.post(Uri.parse(apiUrl),
            headers: {
              HttpHeaders.authorizationHeader: Authorization,
              "Content-type": "application/json",
              "Access-Control-Allow-Origin": "*"},
            body:requestbody
        );
        if(response.statusCode == 200)
        {
          resultc = true;
        }
        else
        {
          resultc = false;
        }
      }




}