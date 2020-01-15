import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubitulo = TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
            _crearImagen(),
            _crearTitle(),
            _acciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      )
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://prod-discovery.edx-cdn.org/media/course/image/93f11b63-0c29-4472-964e-c6db1cc574e8-7ad96686a6fd.small.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Paisajes Vergas!', style: estiloTitulo,),
                        SizedBox(height: 7.0,),
                        Text('Guatemala, Guatemala.', style: estiloSubitulo,),
                      ],
                    ),
                  ),
                  Icon(Icons.star, color: Colors.redAccent, size: 30.0,),
                  Text('41', style: TextStyle(fontSize: 20.0),)
                ],
        ),
      ),
    );
  }

  Widget _acciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _crearButton(Icons.call, 'Call'),
        _crearButton(Icons.near_me, 'Route'),
        _crearButton(Icons.share, 'Share'),
      ],
    );
  }

  Widget _crearButton(IconData icon, String title) {
    return Column(
      children: <Widget>[
            Icon(icon, color: Colors.blueAccent,),
            SizedBox(height: 5.0,),
            Text(title, style: TextStyle(color: Colors.blueAccent, fontSize: 20.0))
      ],
    );
  }

  _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Text('This guide then takes a step back to explain Flutter’s approach to layout, and shows how to place a single widget on the screen. After a discussion of how to lay widgets out horizontally and vertically, some of the most common layout widgets are covered.',
        textAlign: TextAlign.justify,),
      ),
    );
  }
}