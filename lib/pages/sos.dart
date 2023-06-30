import 'package:flutter/material.dart';

class Sos extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        title: Text(
          'V O L T A R',
          style: TextStyle(
            fontSize: 15,
            // verificar combinação
            //fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(23))),
      ),

      body:Center(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            children: [
              Text(
                'T E L E F O N E S  D E  E M E R G Ê N C I A',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(17),
                          child: Image.asset('assets/images/samu.png',
                            width: 140,
                            height: 140,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 16),
                  Column(
                    children: [
                      Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(17),
                    child: Image.asset('assets/images/policia.png',
                      width: 140,
                      height: 140,
                    ),
                  ),
                      ),
                    ],
                  ),
                ],
              ),

              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Em caso de Emergência você também pode ligar'
                      ' em nosssa unidade de apoio no 0800-0000.',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              Container(
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Text('M A P A  D E  A P O I O',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

