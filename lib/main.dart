import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  calAction(){
   print('Chamada iniciada');
  }
  mapActio(){
   print('Abrindo o mapa');
  }
  shareAction(){
    print('Compartilhando...');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Exercicio de criação de tela'),
          ),
          body: Column(
            children: [
              Image(image: AssetImage('assets/2150118620.jpg')),
              Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text(
                              'Computador',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Azul',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            )
                          ])),
                      Row(children: [
                        Icon(
                          Icons.star,
                          color: Colors.blue,
                        ),
                        Text('9.456')
                      ])
                    ],
                  )),
              Container(
                  child: Row(
                children: [
                  Botao(icon: Icons.call, text: 'ligar', onPress: calAction),
                  Botao(icon: Icons.location_on, text: 'Mapa', onPress: mapActio ),
                  Botao(icon: Icons.share, text: 'Partilhar', onPress: shareAction)
                  // Expanded(
                  //   child: Container(
                  //       padding: EdgeInsets.all(20),
                  //       child: Column(children: [
                  //         TextButton(
                  //           onPressed:
                  //               null, // Passa a função sem executar diretamente
                  //           child: Icon(
                  //             Icons.call,
                  //             color: Colors.blue,
                  //           ),
                  //         ),
                  //         Text('Ligar')
                  //       ])),
                  // ),
                  // Expanded(
                  //   child: Container(
                  //       padding: EdgeInsets.all(20),
                  //       child: Column(children: [
                  //         TextButton(
                  //           onPressed: null,
                  //           child: Icon(
                  //             Icons.location_on,
                  //             color: Colors.blue,
                  //           ),
                  //         ),
                  //         Text('Mapa')
                  //       ])),
                  // ),
                  // Expanded(
                  //   child: Container(
                  //       padding: EdgeInsets.all(20),
                  //       child: Column(children: [
                  //         TextButton(
                  //             onPressed: null,
                  //             child: Icon(
                  //               Icons.share,
                  //               color: Colors.blue,
                  //             )),
                  //         Text('Partilhar')
                  //       ])),
                  // )
                ],
              )),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                        'Um computador é um dispositivo eletrônico que administra informações ou dados. Os computadores veem os dados como 1s e 0s, mas sabem combiná-los para formar coisas muito mais complexas, como uma foto, um vídeo, um website, um jogo e muito mais.'),
                  )),
                ],
              )
            ],
          )),
    );
  }
}

class Botao extends StatelessWidget {
  Botao({this.onPress, required this.icon, required this.text});
  final Function? onPress;
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: Container(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            TextButton(
              onPressed: onPress != null
                  ? () => onPress!()
                  : null, // Passa a função sem executar diretamente
              child: Icon(
                icon,
                color: Colors.blue,
              ),
            ),
            Text(text)
          ])),
    );
  }
}
