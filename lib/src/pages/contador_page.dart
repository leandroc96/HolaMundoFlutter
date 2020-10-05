import 'package:flutter/material.dart';

class contadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _contadorPageState();
  }
}

class _contadorPageState extends State<contadorPage> {
  final _textoStilo = new TextStyle(fontSize: 30);
  int _numero = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        title: Text("TITULO"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "TOQUES: ",
              style: _textoStilo,
            ),
            Text(
              _numero.toString(),
              style: _textoStilo,
            )
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: resta,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: cero,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: suma,
        ),
      ],
    );
  }

  void suma() {
    setState(() => _numero++);
  }

  void resta() {
    setState(() => _numero--);
  }

  void cero() {
    setState(() => _numero = 0);
    _numero = 0;
  }
}
