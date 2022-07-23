// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:juzawo/authentication/fire_base_auth_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String _title = 'Select An Option';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                AuthController.instance.signOut();
              },
              icon: Icon(Icons.logout),
            ),
          ],
        ),
        body: const HomePage(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override

  ///instantiating the home page state
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  ///card informations,
  String districts = "Districts";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App body consists of single Column
      // Column consists of three children widgets
      body: SingleChildScrollView(
          child: Stack(children: <Widget>[
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              //wrap with expanded to remove the overflow
              Expanded(
                child: Column(
                  children: <Widget>[
                    Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/img/login.png',
                            height: 120,
                            width: 120,
                          ),
                          ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              Center(
                                child: Column(children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned.fill(
                                          child: Container(),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 45.0),
                                          child: TextButton(
                                            style: TextButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              primary: Colors.black,
                                              textStyle:
                                                  const TextStyle(fontSize: 15),
                                            ),
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    // Builder for the nextpage
                                                    // class's constructor.
                                                    builder: (context) =>
                                                        // const DistrictsList()
                                                        const HomePage()),
                                              );
                                            },
                                            child: const Text(
                                              'Authenticated',
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ]),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
      ])),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            label: 'Districts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: 'Ministries',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
