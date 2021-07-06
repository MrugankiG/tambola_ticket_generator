import 'package:flutter/material.dart';
import 'package:tambola_ticket_generator/ticket.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<List<String>> tamBoard = List<List<String>>.generate(
      3, (i) => List<String>.generate(9, (i) => " "),
      growable: false);
  void gen() {
    setState(() {
      TambolaTicketGenerator t = new TambolaTicketGenerator();
      tamBoard = t.Generate();
    });
  }

  @override
  void initState() {
    gen();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tambola Ticket Generator',
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Container(
             margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Table(border: TableBorder.all(color:Colors.black,style: BorderStyle.solid,width: 1,),
              children: [
                TableRow(
                  decoration: BoxDecoration(color: Colors.lightBlueAccent,),
                  children: [
                  Column(children: [Text(tamBoard[0][0], style: TextStyle(fontSize: 20.0)),]),
                  Column(children: [Text(tamBoard[0][1], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[0][2], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[0][3], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[0][4], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[0][5], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[0][6], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[0][7], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[0][8], style: TextStyle(fontSize: 20.0))]),
                ]),
                TableRow(
                  decoration: BoxDecoration(color: Colors.lightBlueAccent,),
                  children: [
                  Column(children: [Text(tamBoard[1][0], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[1][1], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[1][2], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[1][3], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[1][4], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[1][5], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[1][6], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[1][7], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[1][8], style: TextStyle(fontSize: 20.0))]),
                ]),
                TableRow(
                  decoration: BoxDecoration(color: Colors.lightBlueAccent,),
                  children: [
                  Column(children: [Text(tamBoard[2][0], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[2][1], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[2][2], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[2][3], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[2][4], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[2][5], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[2][6], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[2][7], style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text(tamBoard[2][8], style: TextStyle(fontSize: 20.0))]),
                ]
                ),
              ],
              ),
            ),
            Container(
              child: OutlinedButton(  
                child: Text('New', style: TextStyle(fontSize: 20.0),),  
                onPressed: () {gen();},  
              ),  

            ),
          ],
          ),
        )
      ),
    );
  }
}
