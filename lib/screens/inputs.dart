import 'package:flutter/material.dart';
import 'package:practica3_/theme/app_theme.dart';

class Inputs extends StatefulWidget {
  const Inputs({super.key});

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  bool valueSwitch=false;
  double sliderValue=0.0;
  int footRadio=0;
  bool postrecheck1=false;
  bool postrecheck2=false;
  bool postrecheck3=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Entradas'
          )),
      body: ListView(
        children:[ Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                 entradaTexto(),
                 entradaSwitch(),
                 entradaSlider(),
                 entradaRadio(),
                 Text('¿Que postres te gustan?',
                 style: AppTheme.lightTheme.textTheme.headlineLarge,
                 ),
                 entradasChekc(),
                   const ElevatedButton(
                    //style: AppTheme.lightTheme.elevatedButtonTheme,
                    onPressed: null, 
                    child: Text('Guardar', 
               )),
                
            
            ], 
          ),
        ),
        ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:'Inicio',
            ),
          BottomNavigationBarItem(
            icon:Icon (Icons.next_plan),
            label: 'Datos'),
        ]
        ,),
    );
  }

  TextField entradaTexto() {
    return TextField(
            style: AppTheme.lightTheme.textTheme.headlineMedium,
            decoration: InputDecoration(
              border: const UnderlineInputBorder(),
              labelText: 'Escribe tu nombre',
              labelStyle: AppTheme.lightTheme.textTheme.headlineLarge
            ),
           );
  }
  Row entradaSwitch(){
    return Row(
      children: [
        const FlutterLogo(),
        Text('¨¿Te gusta flutter?',
        style: AppTheme.lightTheme.textTheme.headlineLarge,),
        Switch(value: valueSwitch,
        onChanged: (value){
          setState(() {
            valueSwitch= value;
          });
        })
      ],
);
}
  Column entradaSlider(){
    return Column(
      children: [
        Text('Te gusta mucho pero asi mucho Flutter?',
        style: AppTheme.lightTheme.textTheme.headlineLarge,),
        Slider(
          min:0,
          max:10,
          value: sliderValue,
          divisions: 10,
          label:'${sliderValue.round()}',
          onChanged: (value){
            setState(() {
               sliderValue=value;
            print('Valor del Slider: $sliderValue'); 
            });
           
          }),
      ],
    );
  }
  Column entradaRadio(){
    return Column(
      children: [
        Text('Que prefieres?',
        style: AppTheme.lightTheme.textTheme.headlineLarge,),
        ListTile(
          title: Text('tacos al pastor?',
          style: AppTheme.lightTheme.textTheme.bodySmall,),
          leading: Radio(
            value: 1,
            groupValue: footRadio,
            onChanged: (value){
              setState(() {
                 footRadio=value!;
             // print('Comida seleccionada: $footRadio');
              });
             
            },
          ),
          
        ),
         ListTile(
          title: Text('Tacos Campechanos?',
          style: AppTheme.lightTheme.textTheme.bodySmall,),
          leading: Radio(
            value: 2,
            groupValue: footRadio,
            onChanged: (value){
              setState(() {
                 footRadio=value!;
            //  print('Comida seleccionada: $footRadio');
              });
             
            },
          ),
          
        )
      ],
    );
  }
  Row entradasChekc(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
          Text('Helado',
          style: AppTheme.lightTheme.textTheme.bodySmall,),
          Checkbox(value: postrecheck1,
          onChanged: (value){
            setState(() {
              postrecheck1=value!;
            });
          }),
          Text(
            'Chocoflan',
            style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            Checkbox(value: postrecheck2,
          onChanged: (value){
            setState(() {
              postrecheck2=value!;
            });
          }),
          
          Text(
            'Pastel con rompope',
            style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            Checkbox(value: postrecheck3,
          onChanged: (value){
            setState(() {
              postrecheck3=value!;
            });
          }),
      ],
    );
  }
}