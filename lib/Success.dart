import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'quotestock.dart';

void main() {
  runApp(success());
}
class success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Success',
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
    Quote(author:'Madeleine L’Engle',text:'You have to write the book that wants to be written. And if the book will be too difficult for grown-ups, then you write it for children.'),
    Quote(author:'Toni Morrison',text: 'If there’s a book that you want to read, but it hasn’t been written yet, then you must write it.'),
    Quote(author:'Margaret Atwood',text:'A word after a word after a word is power.'),
    Quote(author:'Eleanor Roosevelt',text:'Great minds discuss ideas; average minds discuss events; small minds discuss people.'),
    Quote(author:'David Brinkley',text:'A successful man is one who can lay a firm foundation with the bricks others have thrown at him.'),
    Quote(author:'Mahatma Gandhi',text:'Live as if you were to die tomorrow. Learn as if you were to live forever.'),
    Quote(author:'Mark Twain',text:'Twenty years from now you will be more disappointed by the things that you didn’t do than by the ones you did do.'),

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
        title:Text('Success',
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



