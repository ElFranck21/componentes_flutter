import 'package:flutter/material.dart';
import 'package:practica3_/screens/home_screen.dart';
import 'package:practica3_/screens/images_screen.dart';
import 'package:practica3_/screens/notifications.dart';
import 'package:practica3_/theme/app_theme.dart';

class InfiniteList extends StatefulWidget {
  const InfiniteList({super.key});

  @override
  State<InfiniteList> createState() => _InfiniteListState();
}

class _InfiniteListState extends State<InfiniteList> {
   int selectedIndex= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista'),
      ),
      body: const Center(
        child: Text('Lista'),
      ),
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) => openScreen(context, index),
        backgroundColor: AppTheme.disableWidgetColor,
        items:const [
          BottomNavigationBarItem(
            backgroundColor: AppTheme.primaryColor,
            icon: Icon(Icons.home,),
            label:'Inicio',
            ),
          BottomNavigationBarItem(
            icon:Icon (Icons.list),
            label: 'Listas Infinitas'),


           BottomNavigationBarItem(
            icon:Icon (Icons.notification_add),
            label: 'Notificaciones'),
            
            BottomNavigationBarItem(
            icon:Icon (Icons.image),
            label: 'Imagenes'),

             BottomNavigationBarItem(
            icon:Icon (Icons.exit_to_app),
            label: 'Salir'),
        ]
        ,),
    );
    
  }
   openScreen(BuildContext context, int index){
    MaterialPageRoute ruta= MaterialPageRoute(builder: (context) =>const HomeScreen());

    switch(index){
      case 0:ruta= MaterialPageRoute(builder: (context) =>const HomeScreen());
      break;

      case 1:
      ruta= MaterialPageRoute(builder: (context) =>const InfiniteList());
      break;

      case 2:
      ruta= MaterialPageRoute(builder: (context) =>const Notifications());
      break;

      case 3:
      ruta= MaterialPageRoute(builder: (context) =>const ImagesScreen());
      break;
    }
    setState(() {
      selectedIndex= index;
      Navigator.push(context, ruta);
    });
  }
  
}