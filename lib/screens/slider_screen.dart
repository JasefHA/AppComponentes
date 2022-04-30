import 'package:componentes_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _checkState = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider and Checks'),
      ),
      body: Column(
        children: [
          Slider(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: _checkState ? (value) {
                _sliderValue = value;
                setState(() {});
              }:null
              ),
          Checkbox(
              value: _checkState,
              onChanged: (value) {
                _checkState = value ?? true; //si no tengo ningun valor quiero que sea true
                setState(() {});
              }),
          CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habiltiar Slider'),
              value: _checkState,
              onChanged: (value) => setState(() {_checkState = value ?? true;})//si no tengo ningun valor quiero que sea true
          ),
          Switch(
              value: _checkState,
              onChanged: (value) => setState(() {_checkState = value;})//si no tengo ningun valor quiero que sea true
          ),
          SwitchListTile.adaptive(//adaptive par que se adapte a ios o android
              activeColor: AppTheme.primary,
              title: const Text('Habiltiar Slider'),
              value: _checkState,
              onChanged: (value) => setState(() {_checkState = value;})//si no tengo ningun valor quiero que sea true
          ),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://i.pinimg.com/originals/1e/67/68/1e6768834eeed9f4daa3ff9b5eb3cc44.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          const SizedBox(height: 50)
        ],
      ),
    );
  }
}
