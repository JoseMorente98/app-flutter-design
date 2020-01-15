import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botones(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buttonNavigationBar(context)
      /*BottomNavigationBar(
        fixedColor: Colors.pink,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Container()
          ),
        ],
      ),*/
    );
  }

  _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );

    /*final cajaRosa = Container(
      height: 360.0,
      width: 360.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80.0),
        color: Colors.pink
      ),
    );*/

    final cajaRosa = Transform.rotate(
        angle: -pi/5.0,
        child: Container(
          height: 360.0,
          width: 360.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            color: Colors.pink,
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(239, 98, 188, 1.0),
                Color.fromRGBO(241, 142, 172, 1.0)
              ]
            ),
          ),
        ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          child: cajaRosa,
          top: -100.0,
        )
      ],
    );
  }

  _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Categorías', style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0,),
            Text('Categorías de los productos de ME.', style: TextStyle(color: Colors.white, fontSize: 18.0),),
          ],
        ),
      ),
    );
  }

  Widget _buttonNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))
        )
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0,),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart, size: 30.0,),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 30.0,),
            title: Container()
          ),
        ]
        
      ),
    );
  }

  _botones() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBoton(Colors.blue, Icons.border_all, 'General'),
            _crearBoton(Colors.purpleAccent, Icons.calendar_today, 'Calendario'),
          ]
        ),
        TableRow(
          children: [
            _crearBoton(Colors.green, Icons.cast_connected, 'Productos'),
            _crearBoton(Colors.blueGrey, Icons.category, 'Categorías'),
          ]
        ),
        TableRow(
          children: [
            _crearBoton(Colors.red, Icons.insert_chart, 'Estadisticas'),
            _crearBoton(Colors.purpleAccent, Icons.bubble_chart, 'Estafistica 2'),
          ]
        ),
        TableRow(
          children: [
            _crearBoton(Colors.blue, Icons.border_all, 'General'),
            _crearBoton(Colors.blue, Icons.border_all, 'General'),
          ]
        )
      ],
    );
  }

  _crearBoton( Color color, IconData icon, String text) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur( sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 67, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5.0,),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(icon, color: Colors.white, size: 30.0,),
              ),
              Text(text, style: TextStyle(color: color)),
              SizedBox(height: 5.0,)
            ],
          ),
        ),
      ),
    );
  }



}