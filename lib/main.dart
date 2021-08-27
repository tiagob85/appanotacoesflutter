import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue), home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Anotações App ",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.blueGrey[50],
                  filled: true, //se for true, é permitido o preenchimento.
                  border: OutlineInputBorder(),
                  labelText: 'Pesquisar...',
                  hintText: 'Pesquisar nota...'),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            padding: new EdgeInsets.all(0.3),
            child: Card(
              elevation: 8,
              child: InkWell(
                splashColor: Colors.blue.withAlpha(80),
                onTap: () {
                  print('Card Tapped.');
                },
                child: Column(
                  //mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      title: Text(
                        'Anotação teste',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        '26/08/2021 23:15',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //Função global
}
