import 'package:flutter/material.dart';
import 'package:quotes/Perseverance.dart';
import 'package:quotes/Sport.dart';
import 'package:quotes/Study.dart';
import 'package:quotes/Success.dart';
import 'package:quotes/funnyquotes.dart';
import 'quote_card_general.dart';
import 'Catégories.dart';
import 'quotestock.dart';


void main() {
  runApp(Categories());
}
class Categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Quotes',
      home:MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color.fromRGBO(38,111,157,1),
      theme: ThemeData(fontFamily:'Raleway'),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor:Colors.transparent,
          extendBody: true,
          extendBodyBehindAppBar: true,


          appBar: AppBar(
            backgroundColor:Colors.transparent,


            title:Text('Quotes .',
              style:TextStyle(color:Colors.black,fontSize: 30.0 ),
            ),

          ),
        body: TabBarView(
        children: [
          SingleChildScrollView(
              child:Container(

                decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                      colors: [
                        Colors.cyanAccent,
                        Colors.lightBlueAccent,
                      ],
                    )
                ),
            width:580,
            child:Column(

                children:<Widget>[
                  SizedBox(height:100),

                  IconButton(
                   padding:EdgeInsets.fromLTRB(263, 0, 0, 0),
                   icon:Icon(Icons.favorite_border),
                   iconSize: 40,
                   color:Colors.black,
                   disabledColor: Colors.red,


                  onPressed: () {

                  },
                 ),
                  Text('No One is Perfect - That’s Why Pencils have Erasers',
                      style:TextStyle(color:Colors.black,fontSize: 80),
                    textAlign: TextAlign.center,
                  ),
                  Text('-Wolfgang Riebe ',
                    style:TextStyle(color:Colors.blueGrey,fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height:110),
                  IconButton(
                    padding:EdgeInsets.fromLTRB(263, 0, 0, 0),
                    icon:Icon(Icons.favorite_border),
                    iconSize: 40,
                    color:Colors.black,
                    disabledColor: Colors.red,


                    onPressed: () {

                    },
                  ),
                  Text('If You Want To Live A Happy Life, Tie It To A Goal, Not To People Or Things',
                    style:TextStyle(color:Colors.black,fontSize: 70),
                    textAlign: TextAlign.center,
                  ),
                  Text('Albert Einstein',
                    style:TextStyle(color:Colors.blueGrey,fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height:70),
                ],
            ),

          ),

          ),

          SingleChildScrollView(

              child:Container(

                decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                      colors: [
                        Colors.cyanAccent,
                        Colors.lightBlueAccent,
                      ],
                    )
                ),            width:580,
            height: 830,
            child:Column(
              children:<Widget>[
                SizedBox(height:80),

                Padding(padding: const EdgeInsets.fromLTRB(0,10,0,0),
),
                RaisedButton(
                  onPressed: () => {
                    Navigator.of(context)
                        .push(
                        MaterialPageRoute(
                            builder: (context)=>cat()
                        )
                    ),
                  },
                  textColor: Colors.black,
                  padding: const EdgeInsets.fromLTRB(0,0,0,0),
                  child: Container(
                    width: 500,
                    height:100,
                    decoration: new BoxDecoration(
                        gradient: new LinearGradient(
                          colors: [
                            Colors.black12,
                            Colors.white,
                          ],
                        )
                    ),
                    padding: const EdgeInsets.all(15.0),
                    child:Row(
                    children:<Widget>[
                      Image.asset('assets/icons8-more-60.png'),

                      SizedBox(width:120),
                    Text(
                      'General',
                      textAlign: TextAlign.end,
                      style:TextStyle(
                        fontSize: 40,fontFamily:'',
                      ),
                    ),

  ],
                  ),
                  ),
                ),
                SizedBox(height: 10),
                RaisedButton(
                  onPressed: () => {
                    Navigator.of(context)
                        .push(
                        MaterialPageRoute(
                            builder: (context)=>funny()
                        )
                    ),
                  },
                  textColor: Colors.black,
                  padding: const EdgeInsets.fromLTRB(0,0,0,0),
                  child: Container(
                    width: 500,
                    height:100,                    decoration: new BoxDecoration(
                        gradient: new LinearGradient(
                          colors: [
                            Colors.green,
                            Colors.blue,
                          ],
                        )
                    ),
                    padding: const EdgeInsets.all(15.0),
                    child:Row(
                      children:<Widget>[
                        Image.asset('assets/icons8-smiling-60.png'),

                        SizedBox(width:145),
                        Text(
                          'Funny',
                          textAlign: TextAlign.end,
                          style:TextStyle(
                            fontSize: 40,fontFamily:'',
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                RaisedButton(
                  onPressed: () => {
                    Navigator.of(context)
                        .push(
                        MaterialPageRoute(
                            builder: (context)=>study()
                        )
                    ),
                  },
                  textColor: Colors.black,
                  padding: const EdgeInsets.fromLTRB(0,0,0,0),
                  child: Container(
                    width: 500,
                    height:100,                    decoration: new BoxDecoration(
                        gradient: new LinearGradient(
                          colors: [
                            Colors.blue,
                            Colors.red,
                          ],
                        )
                    ),
                    //
                    padding: const EdgeInsets.all(10.0),
                    child:Row(
                      children:<Widget>[
                        Image.asset('assets/icons8-study-60.png'),

                        SizedBox(width:145),
                        Text(
                          'Study',
                          textAlign: TextAlign.end,
                          style:TextStyle(
                            fontSize: 40,fontFamily:'',
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                RaisedButton(
                  onPressed: () => {
                    Navigator.of(context)
                        .push(
                        MaterialPageRoute(
                            builder: (context)=>success()
                        )
                    ),
                  },
                  textColor: Colors.black,
                  padding: const EdgeInsets.fromLTRB(0,0,0,0),
                  child: Container(
                    width: 500,
                    height:100,                    decoration: new BoxDecoration(
                        gradient: new LinearGradient(
                          colors: [
                            Colors.grey,
                            Colors.amber,
                          ],
                        )
                    ),
                    //icons8-personal-growth-60.png
                    padding: const EdgeInsets.all(10.0),
                    child:Row(
                      children:<Widget>[
                        Image.asset('assets/icons8-personal-growth-60.png'),

                        SizedBox(width:111),
                        Text(
                          'Success',
                          textAlign: TextAlign.end,
                          style:TextStyle(
                            fontSize: 40,fontFamily:'',
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                RaisedButton(
                  onPressed: () => {
                    Navigator.of(context)
                        .push(
                        MaterialPageRoute(
                            builder: (context)=>sport()
                        )
                    ),
                  },
                  textColor: Colors.black,
                  padding: const EdgeInsets.fromLTRB(0,0,0,0),
                  child: Container(
                    width: 500,
                    height:100,                    decoration: new BoxDecoration(
                        gradient: new LinearGradient(
                          colors: [
                            Colors.orange,
                            Colors.deepOrange,
                          ],
                        )
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child:Row(
                      children:<Widget>[
                        Image.asset('assets/icons8-scoreboard-60.png'),

                        SizedBox(width:151),
                        Text(
                          'Sport',
                          textAlign: TextAlign.end,
                          style:TextStyle(
                            fontSize: 40,fontFamily:'',
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                RaisedButton(
                  onPressed: () => {
                    Navigator.of(context)
                        .push(
                        MaterialPageRoute(
                            builder: (context)=>perseverance()
                        )
                    ),
                  },
                  textColor: Colors.black,
                  padding: const EdgeInsets.fromLTRB(0,0,0,0),
                  child: Container(
                    width: 500,
                    height:100,                    decoration: new BoxDecoration(
                        gradient: new LinearGradient(
                          colors: [
                            Colors.red,
                            Colors.blue,
                          ],
                        )
                    ),
                    padding: const EdgeInsets.all(10.0),
                    //icons8-perseverance-60
                    child:Row(
                      children:<Widget>[
                        Image.asset('assets/icons8-perseverance-60.png'),

                        SizedBox(width:70),
                        Text(
                          'Perseverance',
                          textAlign: TextAlign.end,
                          style:TextStyle(
                            fontSize: 40,fontFamily:'',
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),

          )
          ),
    SingleChildScrollView(


              child:Container(
                decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                      colors: [
                        Colors.cyanAccent,
                        Colors.lightBlueAccent,
                      ],
                    )
                ),
                width:580,
            child:Column(
              children:<Widget>[
                SizedBox(height:95),
                Container(
                  width: 110,
                  alignment: Alignment.bottomCenter,
                  decoration: new BoxDecoration(
                    border: Border.all(
                         color: Colors.black,),
                      borderRadius: BorderRadius.all(Radius.circular((100))),

                 gradient: new LinearGradient(
                        colors: [
                          Colors.black,
                          Colors.black,
                        ],
                      )
                  ),
                  child:Image.asset('assets/icons8-utilisateur-masculin-120.png'),

                ),
                Text('Zakaria Nabil',
                  style:TextStyle(fontSize: 40,fontFamily: 'Roboto'
                  ),
                ),

                SizedBox(height:15),
                Container(
                  padding: const EdgeInsets.fromLTRB(10,10,0,0),

                  width:450,

                  height: 100,
                  decoration: new BoxDecoration(
                      border: Border.all(
                        color: Colors.black,),


                  ),
                 child: Row(

                     children:<Widget>[
                      Column(
              children:<Widget>[
                SizedBox(height:5),

                      Text('5',
                        style:TextStyle(fontSize: 40,fontFamily: 'Roboto'),
                  ),

                Text('Saved Quotes',

                style:TextStyle(fontSize: 20,fontFamily: 'Roboto'),
                ),

                     ],
                      ),
                       SizedBox(width:65),

                       Column(
                         children:<Widget>[
                           SizedBox(height:5),

                           Text('12K',
                             style:TextStyle(fontSize: 40,fontFamily: 'Roboto'),
                           ),

                           Text('Followers',

                             style:TextStyle(fontSize: 20,fontFamily: 'Roboto'),
                           ),

                         ],
                       ),
                       SizedBox(width:65),

                       Column(
                         children:<Widget>[
                           SizedBox(height:5),

                           Text('00',
                             style:TextStyle(fontSize: 40,fontFamily: 'Roboto'),
                           ),

                           Text('Following',

                             style:TextStyle(fontSize: 20,fontFamily: 'Roboto'),
                           ),

                         ],
                       ),

                ],
                 ),

                ),
                SizedBox(height:15),


Row(


    children:<Widget>[

      Row(
children:<Widget>[



          Row(
      children:<Widget>[
        Padding(

          padding: const EdgeInsets.all(5.0),),

    Container(
      width:220,
      height:220,
      padding: const EdgeInsets.all(5.0),

      decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,

        ),
          gradient: new LinearGradient(
            colors: [
              Colors.purple,
              Colors.yellow,
            ],
          )

      ),
      child:Column(
        children: [

          Text('If you want to live a happy life, tie it to a goal, not to people or things.',
            style:TextStyle(color:Colors.black,fontSize: 27),
            textAlign: TextAlign.center,
          ),
          SizedBox(height:15),

          Text('Albert Einstein',
            style:TextStyle(color:Colors.white,fontSize: 15),
            textAlign: TextAlign.center,
          ),

        ],
      ),
),
      ],
      ),
        ],
        ),
      SizedBox(width:25),
      SizedBox(height:95),

      Column(
    children:<Widget>[


      Padding(

        padding: const EdgeInsets.fromLTRB(0,0,0,20),),


      Container(
        width:130,
        height:293,
        padding: const EdgeInsets.all(5.0),

        decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black,

            ),
            gradient: new LinearGradient(
              colors: [
                Colors.brown,
                Colors.grey,
              ],
            )

        ),
        child:Column(
          children: [
            SizedBox(height:20),

            Text('Live as if you were to die tomorrow. Learn as if you were to live forever.',
              style:TextStyle(color:Colors.black,fontSize: 25),
              textAlign: TextAlign.center,
            ),
            Text('Mahatma Gandhi',
              style:TextStyle(color:Colors.white,fontSize: 15),
              textAlign: TextAlign.center,
            ),        ],
        ),
      ),
    ],




  ),


],

    ),
                Row(


                  children:<Widget>[
                    Column(

                      children:<Widget>[


                          Row(


                            children:<Widget>[

                              Row(
                                children:<Widget>[



                                  Row(
                                    children:<Widget>[
                                      Padding(

                                        padding: const EdgeInsets.all(5.0),),

                                      Container(
                                        width:175,
                                        height:203,
                                        padding: const EdgeInsets.all(5.0),

                                        decoration: new BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all(
                                              color: Colors.black,

                                            ),
                                            gradient: new LinearGradient(
                                              colors: [
                                                Colors.orange,
                                                Colors.deepOrange,
                                              ],
                                            )

                                        ),
                                        child:Column(
                                          children: [
                                            Text('To Be Yourself In A World That Is Constantly Trying To Make You Something Else Is The Greatest Accomplishment',
                                              style:TextStyle(color:Colors.black,fontSize: 20),
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(height:12),

                                            Text('Ralph Waldo Emerson',
                                              style:TextStyle(color:Colors.white,fontSize: 15),
                                              textAlign: TextAlign.center,
                                            ),

                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(width:25),
                              SizedBox(height:95),

                              Column(
                                children:<Widget>[


                                  Padding(

                                    padding: const EdgeInsets.fromLTRB(0,0,0,20),),


                                  Container(
                                    width:175,
                                    height:210,
                                    padding: const EdgeInsets.all(5.0),

                                    decoration: new BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.black,

                                        ),
                                        gradient: new LinearGradient(
                                          colors: [
                                            Colors.teal,
                                            Colors.pinkAccent,
                                          ],
                                        )

                                    ),
                                    child:Column(
                                      children: [
                                        SizedBox(height:15),

                                        Text("It's Never Too Late To Be What You Might Have Been.",
                                          style:TextStyle(color:Colors.black,fontSize: 25),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height:15),

                                        Text('George Eliot',
                                          style:TextStyle(color:Colors.white,fontSize: 15),
                                          textAlign: TextAlign.center,
                                        ),        ],
                                    ),
                                  ),
                                ],




                              ),


                            ],

                          ),
                        SizedBox(height:20),

                        Row(


        children:<Widget>[
          Column(

            children:<Widget>[


                 Row(


                children:<Widget>[

                  Row(
                    children:<Widget>[



                      Row(
                        children:<Widget>[
                          Padding(

                            padding: const EdgeInsets.all(5.0),),

                          Container(
                            width:400,
                            height:60,
                            padding: const EdgeInsets.all(5.0),

                            decoration: new BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.black,

                                ),
                                gradient: new LinearGradient(
                                  colors: [
                                    Colors.white,
                                    Colors.red,
                                  ],
                                )

                            ),
                            child:Column(
                              children: [
                                Text('Everything you can imagine is real.',
                                  style:TextStyle(color:Colors.black,fontSize: 25),
                                  textAlign: TextAlign.center,
                                ),
                                Text('Pablo Picasso',
                                  style:TextStyle(color:Colors.white,fontSize: 15),
                                  textAlign: TextAlign.center,
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),


                ],

              ),


                      ],
                    ),





                  ],

                ),
                SizedBox(height:75),

              ],
            ),
],
    ),
],
    ),
),

    ),
],
      ),
            bottomNavigationBar:TabBar(
              indicatorColor:Colors.black,
              unselectedLabelColor: Colors.white,
              labelColor: Colors.black,
                tabs:[
                  Tab(
                    child:Column(
            children:<Widget>[
                      Icon(Icons.home),
              Text('Home'),
            ],
                    ),
                  ),
                  Tab(
                      child:Column(
                        children:<Widget>[
                          Icon(Icons.view_headline),
                          Text('Categories'),
                        ],),),
                  Tab(child:Column(
                    children:<Widget>[
                      Icon(Icons.account_circle),
                      Text('Profile'),
                    ],),),
                ],

            ),
          ),
        ),
      );

  }
}
