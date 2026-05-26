import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatefulWidget {

  

   MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
   double size = 0;

   String inputvalue = "";
   String calculated ="";
   String operator = "";

  @override
  Widget build(BuildContext context) {
     size = MediaQuery.of(context).size.width/4.7;
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            Text(inputvalue,style: TextStyle(color: Colors.white,fontSize: 100),textAlign:TextAlign.right,),
            Column(
              children: [
                Row(
                  children: [
                    calcbutton("7",Colors.grey,Colors.white),
                    calcbutton("8",Colors.grey,Colors.white),
                    calcbutton("9",Colors.grey,Colors.white),
                    calcbutton("/",Colors.orange,Colors.white),
                  ],
                  ),
                  Row(
                  children: [
                    calcbutton("4",Colors.grey,Colors.white),
                    calcbutton("5",Colors.grey,Colors.white),
                    calcbutton("6",Colors.grey,Colors.white),
                    calcbutton("*",Colors.orange,Colors.white),
                  ],
                  ),
                  Row(
                  children: [
                    calcbutton("1",Colors.grey,Colors.white),
                    calcbutton("2",Colors.grey,Colors.white),
                    calcbutton("3",Colors.grey,Colors.white),
                    calcbutton("-",Colors.orange,Colors.white),
                  ],
                  ),
                  Row(
                  children: [
                    calcbutton("0",Colors.grey,Colors.white),
                    calcbutton(".",Colors.grey,Colors.white),
                    calcbutton("=",Colors.orange,Colors.white),
                    calcbutton("+",Colors.orange,Colors.white),
                  ],
                  ),
                  calcbutton("clear", Colors.white,Colors.black)
                ],
             )    
          ],
        )
      ),
    );
  }

  Widget calcbutton (String text,Color bgcolor,Color texts){
    return  InkWell(
            onTap: () {
              if (text == "clear"){
                setState(() {
                  inputvalue = "";
                  operator ="";
                  calculated = "";
                });
              }
              else if (text == "+"  || text == "-" || text == "*" || text == "/"){
                setState(() {
                  calculated = inputvalue;
                  inputvalue = "";

                  operator = text;
                });
              } else if(text == "="){
                setState(() {
                  
                  double sree = double.parse(calculated);
                  double int = double.parse(inputvalue);
                   //inputvalue = calculated + inputvalue; 
                   if(operator == "+"){
                    inputvalue = (sree + int).toString();
                   }else  if(operator == "-"){
                    inputvalue = (sree - int).toString();
                   }else if(operator == "*"){
                    inputvalue = (sree * int).toString();
                   }else if(operator == "/") {
                    inputvalue = (sree / int).toString();
                   }
                });
              }
              else {
                setState(() {
                inputvalue =inputvalue + text;
              });
              }
              
              },
                      child: Container(
                        height: size,
                        width: size,
                        margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                           color: bgcolor,
                        ),
                        child: Text(text,
                        style: TextStyle(color: texts,fontSize: 18),),
                      ),
    );
  }
}

