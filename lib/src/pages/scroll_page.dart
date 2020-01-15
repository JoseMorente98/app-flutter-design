import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2()
        ],
      )
    );
  }

  _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );
  }

  _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blueAccent,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text('Welcome', style: TextStyle(fontSize: 20.0),),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  _imagenFondo() {
    return Image(
      image: AssetImage('assets/scroll-1.png'),
      fit: BoxFit.cover,
    );
  }

  _textos() {

    final estiloTexto = TextStyle(
      color: Colors.white,
      fontSize: 50.0
    );

    return SafeArea(
      child: Column(
        children: <Widget>[
          Text('11°', style: estiloTexto,),
          Text('Miercoles', style: estiloTexto,),
          Expanded(
            child: Container(),
          ),
          Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 70.0,)
        ],
      ),
    );
  }
}