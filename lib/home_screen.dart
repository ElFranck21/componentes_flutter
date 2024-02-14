import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title:const Text('App de componentes de flutter'),
      ),
        body: ListView(
          children:const [
            Text('hola mundo'),
            Text('hola mundo'),
            Text('hola mundo'),
            Text('hola mundo'),
            Text('hola mundo'),
            Text('hola mundo'),
            Text('hola mundo'),
            Text('hola mundo'),
            Text('hola mundo'),
            Text('hola mundo'),
            Text('hola mundo'),
            Text('hola mundo'),
            Text('hola mundo'),

          ],
        ),
      );
  }
}