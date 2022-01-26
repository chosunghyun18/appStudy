import 'package:flutter/material.dart';


// class NoPoverty extends StatefulWidget
// {
//   @override
//   State<NoPoverty> createState() => _NoPovertyState();
// }
//
// class _NoPovertyState extends State<NoPoverty> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             title: Text("NoPoverty")
//         )
//     );
//   }
// }


class NoPoverty extends StatelessWidget {
  const NoPoverty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Image.asset("assets/GDSCLOGO.jpg",width:100,height:50),
        centerTitle: true,
      ),
      body: ListView(
          children: <Widget>[
            Container(
              child: Row(
                children:<Widget> [
                  ClipRect(child: Image.asset("assets/selfie.jpeg",width: 100,height: 100,)),
                  Container(child: Column(
                      children:[
                        Text("유니세프"),
                        Text("10000")]
                  ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children:<Widget> [
                  ClipRect(child: Image.asset("assets/selfie.jpeg",width: 100,height: 100,)),
                  Container(child: Column(
                      children:[
                        Text("유니세프"),
                        Text("10000")]
                  ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children:<Widget> [
                  ClipRect(child: Image.asset("assets/selfie.jpeg",width: 100,height: 100,)),
                  Container(child: Column(
                      children:[
                        Text("유니세프"),
                        Text("10000")]
                  ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children:<Widget> [
                  ClipRect(child: Image.asset("assets/selfie.jpeg",width: 100,height: 100,)),
                  Container(child: Column(
                      children:[
                        Text("유니세프"),
                        Text("10000")]
                  ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children:<Widget> [
                  ClipRect(child: Image.asset("assets/selfie.jpeg",width: 100,height: 100,)),
                  Container(child: Column(
                      children:[
                        Text("유니세프"),
                        Text("10000")]
                  ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children:<Widget> [
                  ClipRect(child: Image.asset("assets/selfie.jpeg",width: 100,height: 100,)),
                  Container(child: Column(
                      children:[
                        Text("유니세프"),
                        Text("10000")]
                  ),
                  ),
                ],
              ),
            ),
          ]
      ),
    );

  }
}