import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


      
  Widget custombutton(String btnvalue){
      return Expanded(
        
      
        child: OutlinedButton(
          
          onPressed: () => btnclicked(btnvalue),
        child: Text(
          "$btnvalue",
          style: TextStyle(
            fontSize: 23.0
          ),
          
          ),
        ),
      
      );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Center(child: Text("Calculator"))
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  "Outpput",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600
                  ),


                ),
              )
            
            ),



          Row(
            children: [
              custombutton("9"),
              custombutton("8"),
              custombutton("7"),
              custombutton("+"),
            
            ],
          ),


               Row(
            children: [
              custombutton("6"),
              custombutton("5"),
              custombutton("4"),
              custombutton("-"),
            
            ],
          ),

           Row(
            children: [
              custombutton("3"),
              custombutton("2"),
              custombutton("1"),
              custombutton("*"),
            
            ],
          ),


           Row(
            children: [
              custombutton("C"),
              custombutton("0"),
              custombutton("="),
              custombutton("/"),
            
            ],
          ),





































          ],
        ),

      ),
    );
  }
}