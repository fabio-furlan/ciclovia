import 'package:flutter/material.dart';

class Ciclovia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  //width: 330,
                  // height: 220,
                  // color: Colors.red,
                  child: Image.asset('assets/images/ciclovia.jpg'),
                ),
              ),
              Container(
                width: 350,
                height: 42,
                //color: Colors.yellowAccent,

                child: Text(
                  'História da nossa ciclovia',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Container(
                width: 310,
                height: 360,
                //color: Colors.blue,
                child: Text(
                  'A ciclovia em São Paulo teve seu início na década de 1970, mas ganhou impulso a partir dos anos 1990. A implementação de ciclovias ocorreu gradualmente, com a criação de trechos isolados. Em 2009, foi criado um plano diretor para a expansão da infraestrutura ciclística, visando à criação de uma rede integrada. Desde então, foram criadas ciclovias importantes, como a Ciclovia Rio Pinheiros e a Ciclovia Paulista. A cidade também adotou o programa "Ciclofaixa de Lazer", fechando vias aos domingos e feriados para a práticasegura do ciclismo. Ainda há desafios a serem enfrentados, como melhorar a infraestrutura existente e aumentar a segurança para os ciclistas.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                   // letterSpacing: 3,
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
