import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Envío de Datos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ParentWidget(),
    );
  }
}

class ParentWidget extends StatefulWidget {
  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  String mensaje = 'Hola desde el widget padre';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Padre'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              mensaje,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ChildWidget(mensaje: mensaje),
          ],
        ),
      ),
    );
  }
}

class ChildWidget extends StatelessWidget {
  final String mensaje;

  ChildWidget({required this.mensaje});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Widget Hijo',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Mensaje del padre:',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            mensaje,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

