import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web App',
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          
          backgroundColor:Colors.blueGrey,
          title:Text('Arslan Jutt'),
          centerTitle: true,
          titleTextStyle:TextStyle(
            fontStyle:FontStyle.italic,
            color: Color.fromARGB(255, 80, 226, 185),
            fontSize: double.minPositive,
            
          ),
          
         ),
         drawer:Drawer(),

      ),
    );
  }
}
