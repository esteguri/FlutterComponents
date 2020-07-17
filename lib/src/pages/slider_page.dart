import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 45.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckbox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      label: "Tamaño de la imagen",
      activeColor: Colors.indigo,
      onChanged: (_bloquearCheck)
          ? null
          : (value) {
              setState(() {
                _sliderValue = value;
              });
            },
      value: _sliderValue,
      min: 90,
      max: 400,
    );
  }

  Widget _crearCheckbox() {
    return CheckboxListTile(
        title: Text("Bloquear slider"),
        activeColor: Colors.indigo,
        value: _bloquearCheck,
        onChanged: (bool value) {
          setState(() {
            _bloquearCheck = value;
          });
        });
  }

  Widget _crearSwitch() {
    return Switch(
        activeColor: Colors.indigo,
        value: _bloquearCheck,
        onChanged: (bool value) {
          setState(() {
            _bloquearCheck = value;
          });
        });
  }

  Widget _crearImagen() {
    return FadeInImage(
        placeholder: AssetImage('assets/loading.gif'),
        width: _sliderValue,
        image: NetworkImage(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Angular_full_color_logo.svg/1200px-Angular_full_color_logo.svg.png"));
  }
}
