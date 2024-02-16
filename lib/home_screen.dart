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
          children: <Widget> [
            ListTile(
              title: Text('Entradas',
                style:Theme.of(context).textTheme.headlineLarge ,),
              subtitle: Text('Recuperar informacion de TexField',
                style: Theme.of(context).textTheme.bodySmall,),
              leading:const Icon(Icons.inbox_rounded),
              trailing:const Icon(Icons.arrow_right_outlined),
              
            ),
            const Divider(),
            ListTile(
              title: Text('Lista infinita',
                style:Theme.of(context).textTheme.headlineLarge ,),
              subtitle:  Text('Recuperar muchos elementos',
                style: Theme.of(context).textTheme.bodySmall,),
              leading: Icon(Icons.list_alt_sharp),
              trailing: Icon(Icons.arrow_right_outlined),

            ),const Divider(),
            ListTile(
              title: Text('Notificaciones',
                style:Theme.of(context).textTheme.headlineLarge ,),
              subtitle:  Text('Manejo de notificaciones',
              style: Theme.of(context).textTheme.bodySmall,),
              leading: Icon(Icons.notification_important),
              trailing: Icon(Icons.arrow_right_outlined),
            ),
          ],
        ),
      );
  }
}