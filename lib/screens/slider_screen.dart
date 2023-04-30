import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 200;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sliders & Checks"),
      ),
      body: Column(children: [
        Slider(
          min: 50,
          max: 400,
          value: _sliderValue,
          activeColor: AppTheme.primary,
          onChanged: _sliderEnabled 
                      ? (value) {
                        // es necsario actualizar el valor del slider y luego llamar al setState
                        _sliderValue = value;
                        setState(() {});
                        }
                      : null,
        ),

        // Es una variante del checkBox
        CheckboxListTile(
          activeColor: AppTheme.primary,
          title: const Text('Habilitar Slider'),
          value: _sliderEnabled,
          onChanged: (value) {
            _sliderEnabled = value ?? true;
            setState(() {});
          },
        ),

        //Es una mezcla entre checkbox y un switch que es mas genial que los anteriores
         SwitchListTile(
          activeColor: AppTheme.primary,
          title: const Text('Habilitar Slider'),
          value: _sliderEnabled,
          onChanged: (value) {
            _sliderEnabled = value ;
            setState(() {});
          },
        ),

        Image(
          image: const NetworkImage(
              'https://i.pinimg.com/originals/35/b2/a7/35b2a774ba4174f9148f59689e9eb4b0.jpg'),
          fit: BoxFit.contain,
          width: _sliderValue,
        )
      ]),
    );
  }
}
