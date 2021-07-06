import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
                  Column(children: [Text('1', style: TextStyle(fontSize: 20.0)),]),
                  Column(children: [Text('  ', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('25', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('31', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('  ', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('56', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('  ', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('70', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('  ', style: TextStyle(fontSize: 20.0))]),
                ]),
                TableRow(
                  decoration: BoxDecoration(color: Colors.lightBlueAccent,),
                  children: [
                  Column(children: [Text('  ', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('10', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('29', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('  ', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('40', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('  ', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('65', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('  ', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('88', style: TextStyle(fontSize: 20.0))]),
                ]),
                TableRow(
                  decoration: BoxDecoration(color: Colors.lightBlueAccent,),
                  children: [
                  Column(children: [Text('4', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('13', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('  ', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('38', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('  ', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('59', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('  ', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('73', style: TextStyle(fontSize: 20.0))]),
                  Column(children: [Text('89', style: TextStyle(fontSize: 20.0))]),
                ]
                ),
              ],
              ),
            ),
            Container(
              child: OutlinedButton(  
                child: Text('New', style: TextStyle(fontSize: 20.0),),  
                onPressed: () {},  
              ),  

            ),
          ],
          ),
        )
      ),
    );
  }
}
