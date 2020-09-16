import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'quotestock.dart';

void main() {
  runApp(sport());
}
class sport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'General',
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
    Quote(author:'Dennis P.Kimbro',text: 'Life is 10 % What Happens To us and 90 % How We React it'),
    Quote(author:'Johann Wolfgang von Goethe',text: 'Everything is hard before it is easy.'),
    Quote(author:'Oscar Wilde',text: 'Life is never fair, and perhaps it is a good thing for most of us that it is not.'),
    Quote(author:'Stephen King',text: 'Sooner or later  even the fastest runners have to stand and fight.'),
    Quote(author:'Alice Walker',text: 'The most common way people give up their power is by thinking they dont have any. '),
    Quote(author:'Mark Twain',text:'Challenges make life interesting, however overcoming them is what makes life meaningful.'),
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
        title:Text('Sport',
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



