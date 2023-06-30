import 'package:flutter/material.dart';
import 'package:ciclovia_mais/pages/ciclovia.dart';
import 'package:ciclovia_mais/pages/fotografar.dart';
import 'package:ciclovia_mais/pages/sos.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        title: Text(
          'M E N U',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(23))),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.black12,
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(

                  child: Image.asset(
                    'assets/images/logo.png',
                  ),
                ),
              ),

              ListTile(
                leading: Icon(
                  Icons.home_filled,
                  color: Colors.red,
                ),
                title: Text(
                  '-  H O M E',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .pop(MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),

              ListTile(
                leading: Icon(
                  Icons.directions_bike_sharp,
                  color: Colors.red,
                ),
                title: Text(
                  '- C I C L O V I A',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Ciclovia()));
                },
              ),
              ListTile(
                  leading: Icon(
                    Icons.add_a_photo,
                    color: Colors.red,
                  ),
                  title: Text(
                    '-  F O T O G R A F A R',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Fotografar()));
                  }),
              ListTile(
                leading: Icon(
                  Icons.add_call,
                  color: Colors.red,
                ),
                title: Text(
                  '-  S O S',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Sos()));
                },
              ),
            ],
          ),
        ),
      ),
      body: Stack(

        children: [
          Image.asset(
            'assets/images/capa.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

          Padding(
            padding: EdgeInsets.all(5.0),
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                   // color: Colors.yellow,
                    height: 220,
                    child: Image.asset(
                      'assets/images/logo.png',
                      // width: 360,
                      // height: 150,
                    ),
                  ),

                  //////////// texto corpo
                  Container(
                    color: Colors.black12,
                     width: 250,
                     height: 130,
                     child: Text(
                       'Com nosso aplicativo você'
                           ' consegue fotografar partes'
                           ' da ciclovia onde necessita de melhorias',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                     ),
                  ),

                  SizedBox(height: 60),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      elevation: 25,
                      shadowColor: Colors.tealAccent,
                    ),
                       onPressed: () {
                         Navigator.of(context).push(
                             MaterialPageRoute(builder: (context) => Fotografar()));
                       },
                    child: Text('      F O T O G R A F A R      ',
                    style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 15,
                  ),
                  ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
