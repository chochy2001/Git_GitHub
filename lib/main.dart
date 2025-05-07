import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//Cambios realizados por mi joseCapdesis en el proyecto open source
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Git y GitHub',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Curso Git y GitHub'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Presiónaste el botón',style: TextStyle(color: Colors.blueAccent, fontSize: 40),),
            Text(
              '$_counter',
              style: TextStyle(color: Colors.blueAccent,fontSize: 90 ),
            ),
            Image.asset('assets/images/logo_capdesis.png',height: 190,width: 190,color: Colors.amber,),
            Text('Curso Git y Github de Cero a Experto',style: TextStyle(color: Colors.grey, fontSize: 30),),
            Image.asset('assets/images/curso_git_github.png'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Aumentó el número',
        child: Icon(Icons.add),
      ), 
    );
  }
}
//Nayara Bastida
