import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'quotestock.dart';

void main() {
  runApp(study());
}
class study extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Study',
      home:MyHomePage(),

    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Quote> quotes = [
    Quote(author:'John Hersey',text: 'Learning Starts With Failure ; The First Failure is The Beginning Of Education'),
    Quote(author:'Herbet Spencer',text: 'The Great Aim of Education is Not Knowledge,But Action.'),
    Quote(author:'Unknown',text:'Never Regret Your Decisions,Every Mistake Makes You Smarter And Stronger'),
    Quote(author:'Ruud Gullit',text:'You Only Stop Learning When You Quit'),
    Quote(author:'Unknown ',text:'Bring Your Own Habits To The Table.'),
    Quote(author:'Anthony J.Angelo',text:'Develop A Passion For Learning If You Do, You Will Never Cease To Grow'),
  ];
  Widget quoteTemplate(quote){
    return Card(
      color:Colors.black,
      margin:EdgeInsets.fromLTRB(16, 16, 16, 16) ,
      child:Padding(

        padding: const EdgeInsets.all(12.0),
        child: Column(

          children:<Widget>[
            Text(
                quote.text,
                style:TextStyle(
                  fontSize: 18.0,
                  color:Color.fromRGBO(38,111,157,1),
                )
            ),
            SizedBox(height:6.0),
            Text(
              quote.author,
              style:TextStyle(
                  fontSize:14.0,
                  color:Colors.grey
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(38,111,157,1),

      appBar: AppBar(
        backgroundColor:Color.fromRGBO(38,111,157,1),
        title:Text('Study',
          style:TextStyle(color: Colors.black,fontSize: 30.0 ),

        ),
        centerTitle: true,

      ),
      body:SingleChildScrollView(
        child:Column(
          children:quotes.map((quote)=> quoteTemplate(quote)).toList(),
        ),
      ),
    );
  }
}



