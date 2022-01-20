import 'package:flutter/material.dart';
void main() 
{
  runApp(const MyApp());
  // app 시작을 runApp
}
//App의 main page
class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title:Text('text')),
          body:Container(
            height: 150,
            padding: EdgeInsets.all(20),
            child:Row(
            children: [
              Image.asset('google.jpg',width:150),
              Flexible(child:
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('이것은 구글',style: TextStyle(fontSize: 12)),
                      Text('상세페이지의 내용'),
                      Text('앱이다'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Icon(Icons.favorite),
                         Text('4')
                     ],
                    )
                  ],
                ),

              ),flex: 5),
            ],
          ),

        ),
            bottomNavigationBar: BottomAppBar(
            child: Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.phone),
                  Icon(Icons.message),
                  Icon(Icons.contact_page),
                ],
              ),
            ),
        )

        ),
        );

  }
}

