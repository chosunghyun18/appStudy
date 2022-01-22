import 'package:flutter/material.dart';
import 'Subscribe.dart';
import 'Search_Screen.dart';

class HomeScreen extends StatefulWidget
{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override

  // move to maybe  constant class

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,// for custom icon option setting down below

        title:
        Image.asset('GDSCLOGO.jpg'),

        leading: Builder(
          builder :(context) => IconButton(
            icon:  Icon(Icons.person_rounded),
            onPressed: () =>Scaffold.of(context).openDrawer(),
          ),
        ),


        actions: [
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => Search_Screen())),
              icon: Icon(Icons.search))
        ],

      ),

      drawer:
      Container(
        child:  Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('selfie.jpeg'),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage('GDSCLOGO.jpg'),
                  )
                ],
                accountEmail: Text('krischo1204@gmail.com'),
                accountName: Text('chosung hyun'),
                onDetailsPressed: () {
                  print('press details');
                },
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    )),
              ),

              ListTile(
                title: Text('Item 1111111'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),


      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'category',
                ),
              ],
            ),
          ),
        ),
      ),

      /////////Informattion sector for


      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => Subscribe())),
        child: const Icon(Icons.star),
      ),
    );
  }
}
