import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'quotestock.dart';

void main() {
  runApp(funny());
}
class funny extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Funny',
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

    Quote(author:'Alan Dundes',text:"Light travels faster than sound. This is why some people appear bright until you hear them speak."),
    Quote(author:'Dalai Lama',text:"If you think you are too small to make a difference, try sleeping with a mosquito."),
    Quote(author:'Dale Carnegie',text:"Remember, today is the tomorrow you worried about yesterday."),
    Quote(author:'Albert Einstein',text:"The difference between stupidity and genius is that genius has its limits."),
    Quote(author:'John Wayne',text:"Life is hard; it's harder if you're stupid."),
    Quote(author:'Drake',text:"I was born to make mistakes, not to fake perfection."),
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
        title:Text('Funny',
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



