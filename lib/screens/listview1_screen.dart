import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
   
  final options = const ['Megaman','Metal Gear','Final Fantasy','Super Smash'];

  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center( 
          child : Text('ListView Tipo1')
          ),
      ),
      body: ListView(
        children: [
          ...options.map(
            (game) => ListTile(
              title: Text(game),
              trailing: const Icon(Icons.arrow_circle_right_outlined),
            )
            ).toList(),
        ],
      )
    );
  }
}