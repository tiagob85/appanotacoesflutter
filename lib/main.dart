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
          ListView(
            shrinkWrap: true,
            physics:
                const ClampingScrollPhysics(), //Scroll para correr a lista.
            children: [
              NoteBox(title: "Anotação 1", data: "28/08/2021 18:31"),
              NoteBox(title: "Anotação 2", data: "28/08/2021 18:32"),
              NoteBox(title: "Anotação 3", data: "28/08/2021 18:33"),
              NoteBox(title: "Anotação 4", data: "28/08/2021 18:34"),
              NoteBox(title: "Anotação 5", data: "28/08/2021 18:35"),
              NoteBox(title: "Anotação 6", data: "28/08/2021 18:36"),
              NoteBox(title: "Anotação 7", data: "28/08/2021 18:37"),
              NoteBox(title: "Anotação 8", data: "28/08/2021 18:38"),
              NoteBox(title: "Anotação 9", data: "28/08/2021 18:39"),
            ],
          ),
        ],
      ),
    );
  }
}

class NoteBox extends StatelessWidget {
  const NoteBox({
    Key? key,
    required this.title,
    required this.data,
  }) : super(key: key);

  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      child: Card(
        elevation: 8,
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                this.title,
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                this.data,
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
    );
  }
}
