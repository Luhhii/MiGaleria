import 'package:flutter/material.dart';

void main() => runApp(MyAgendaFotograficaApp());

class MyAgendaFotograficaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'No tiene efecto',
      home: new PaginaPrincipal(title: 'GridView Galeria de fotos'),
      debugShowCheckedModeBanner: false,
    ); //Fin MaterialApp
  } //Fin widget
} //Fin MyApp

class PaginaPrincipal extends StatefulWidget {
  final String title;
  @override
  PaginaPrincipal({this.title}) : super();
  @override
  State<StatefulWidget> createState() {
    return new PaginaPrincipalState();
  }
} //Fin stateful

class PaginaPrincipalState extends State<PaginaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text(widget.title),
      ), //fin AppBar
      body: new GridView.extent(maxCrossAxisExtent: 150.0, mainAxisSpacing: 5.0, crossAxisSpacing: 5.0, padding: const EdgeInsets.all(5.0), children: _buildGridTiles(29)), //Fin de gridView
    ); //Fin Scaffold
  } //Fin de widget
} //Fin de PaginaPrincipalState

List<Widget> _buildGridTiles(numberOfTiles) {
  List<Container> containers = new List<Container>.generate(numberOfTiles, (int index) {
    //index = 0, 1, 2,...
    final imageName = index < 9 ? 'images/image0${index + 1}.JPG' : 'images/image${index + 1}.JPG';
    return new Container(
      child: new Image.asset(imageName, fit: BoxFit.fill), //Fin child
    ); //Fin Container
  });
  return containers;
} //Fin de List
