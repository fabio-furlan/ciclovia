import 'package:flutter/material.dart';


class Fotografar extends StatelessWidget {
  const Fotografar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

