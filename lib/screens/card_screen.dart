import 'package:flutter/material.dart';
import '../widgets/widgets.dart';


class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardTipo1(),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/44/Plaza_Mayor_de_Madrid_06.jpg', imageDescription: 'Plaza Mayor de Madrid',),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://phantom-marca.unidadeditorial.es/2fe53186a4afa66f403ee2baa7c40d2a/resize/1320/f/jpg/assets/multimedia/imagenes/2021/10/25/16351929241450.jpg', imageDescription: 'Estadio Santiago Bernabeu',),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://content.r9cdn.net/rimg/dimg/ff/2a/e1b64f74-city-32213-16b31d00c32.jpg?crop=true&width=1366&height=768&xhint=3192&yhint=1947'),

        ],
      ),
    );
  }
}

