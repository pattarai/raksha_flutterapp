import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:animated_button/animated_button.dart';


class Scientific extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Scientific();
  }
}

class _Scientific extends State<Scientific> {

  String equation = "0";
  String result = "0";
  String expression = "";

  int find(var value) {
    var fact = 1;
    for(var i = 2;i<=value;i++)
    {
      fact *=i;
    }
    return fact;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/star.jpg"),fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: Text( equation ,style: TextStyle(fontSize: 40,color: Colors.white),),
                  padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: Text( result ,style: TextStyle(fontSize: 40,color: Colors.white),),
                  padding: EdgeInsets.all(10),
                ),
              ),
              Container(
                height: 450,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Table(
                    children: [
                      TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: AnimatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(equation =="0") {
                                        equation = "sin";
                                      }else {
                                        equation = equation + "sin";
                                      }
                                    });
                                  },
                                  enabled: true,
                                  shadowDegree: ShadowDegree.light,
                                  height: 50,
                                  width: 85,
                                  duration: 20,
                                  child: Text("sin",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),
                                  color: Colors.white54,
                                ),

                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: AnimatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(equation =="0") {
                                        equation = "cos";
                                      }else {
                                        equation = equation + "cos";
                                      }
                                    });
                                  },
                                  enabled: true,
                                  shadowDegree: ShadowDegree.light,
                                  height: 50,
                                  width: 85,
                                  duration: 20,
                                  child: Text("cos",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),
                                  color: Colors.white54,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: AnimatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(equation =="0") {
                                        equation = "tan";
                                      }else {
                                        equation = equation + "tan";
                                      }
                                    });
                                  },
                                  enabled: true,
                                  shadowDegree: ShadowDegree.light,
                                  height: 50,
                                  width: 85,
                                  duration: 20,
                                  child: Text("tan",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),
                                  color: Colors.white54,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: AnimatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(equation =="0") {
                                        equation = "ln";
                                      }else {
                                        equation = equation + "ln";
                                      }
                                    });
                                  },
                                  enabled: true,
                                  shadowDegree: ShadowDegree.light,
                                  height: 50,
                                  width: 85,
                                  duration: 20,
                                  child: Text("log",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),
                                  color: Colors.white54,
                                ),
                              ),
                            ),

                          ]
                      ),
                      TableRow(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AnimatedButton(
                                    onPressed: () {
                                      setState(() {
                                        equation="0";
                                        result="0";
                                      });
                                    },
                                    enabled: true,
                                    shadowDegree: ShadowDegree.light,
                                    height: 50,
                                    width: 85,
                                    duration: 20,
                                    child: Text("C",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900)),
                                    color: Colors.deepPurpleAccent,
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AnimatedButton(
                                    onPressed: () {
                                      setState(() {
                                        equation="0";
                                        result="0";
                                      });
                                    },
                                    enabled: true,
                                    shadowDegree: ShadowDegree.light,
                                    height: 50,
                                    width: 85,
                                    duration: 20,
                                    child: Text("⌫",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900)),
                                    color: Colors.deepPurpleAccent
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AnimatedButton(
                                    onPressed: () {
                                      setState(() {
                                        equation="0";
                                        result="0";
                                      });
                                    },
                                    enabled: true,
                                    shadowDegree: ShadowDegree.light,
                                    height: 50,
                                    width: 85,
                                    duration: 20,
                                    child: Text("%",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900)),
                                    color: Colors.deepPurpleAccent,
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AnimatedButton(
                                    onPressed: () {
                                      setState(() {
                                        equation="0";
                                        result="0";
                                      });
                                    },
                                    enabled: true,
                                    shadowDegree: ShadowDegree.light,
                                    height: 50,
                                    width: 85,
                                    duration: 20,
                                    child: Text("/",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900)),
                                    color: Colors.deepPurpleAccent,
                                ),
                              ),
                            ),
                          ]
                      ),
                      TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: AnimatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(equation =="0") {
                                        equation = "1";
                                      }else {
                                        equation = equation + "1";
                                      }
                                    });
                                  },
                                  enabled: true,
                                  shadowDegree: ShadowDegree.light,
                                  height: 50,
                                  width: 85,
                                  duration: 20,
                                  child: Text("1",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: AnimatedButton(
                                  onPressed: () {
                                    setState(() {
                                        if(equation =="0") {
                                          equation = "2";
                                        }else {
                                          equation = equation + "2";
                                        }
                                      });
                                    },
                                  enabled: true,
                                  shadowDegree: ShadowDegree.light,
                                  height: 50,
                                  width: 85,
                                  duration: 20,
                                    child: Text("2",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),
                                    color: Colors.blue,
                                  ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: AnimatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(equation =="0") {
                                        equation = "3";
                                      }else {
                                        equation = equation + "3";
                                      }
                                    });
                                  },
                                  enabled: true,
                                  shadowDegree: ShadowDegree.light,
                                  height: 50,
                                  width: 85,
                                  duration: 20,
                                  child: Text("3",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: AnimatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(equation =="0") {
                                        equation = "*";
                                      }else {
                                        equation = equation + "*";
                                      }
                                    });
                                  },
                                  enabled: true,
                                  shadowDegree: ShadowDegree.light,
                                  height: 50,
                                  width: 85,
                                  duration: 20,
                                  child: Text("*",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),
                                  color: Colors.deepPurpleAccent,
                                ),
                              ),
                            ),
                          ]
                      ),
                      TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: AnimatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(equation =="0") {
                                        equation = "4";
                                      }else {
                                        equation = equation + "4";
                                      }
                                    });
                                  },
                                  enabled: true,
                                  shadowDegree: ShadowDegree.light,
                                  height: 50,
                                  width: 85,
                                  duration: 20,
                                  child: Text("4",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: AnimatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(equation =="0") {
                                        equation = "5";
                                      }else {
                                        equation = equation + "5";
                                      }
                                    });
                                  },
                                  enabled: true,
                                  shadowDegree: ShadowDegree.light,
                                  height: 50,
                                  width: 85,
                                  duration: 20,
                                  child: Text("5",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: AnimatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(equation =="0") {
                                        equation = "6";
                                      }else {
                                        equation = equation + "6";
                                      }
                                    });
                                  },
                                  enabled: true,
                                  shadowDegree: ShadowDegree.light,
                                  height: 50,
                                  width: 85,
                                  duration: 20,
                                  child: Text("6",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: AnimatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(equation =="0") {
                                        equation = "+";
                                      }else {
                                        equation = equation + "+";
                                      }
                                    });
                                  },
                                  enabled: true,
                                  shadowDegree: ShadowDegree.light,
                                  height: 50,
                                  width: 85,
                                  duration: 20,
                                  child: Text("+",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),
                                  color: Colors.deepPurpleAccent,
                                ),
                              ),
                            ),

                          ]
                      ),

                      TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: AnimatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(equation =="0") {
                                        equation = "7";
                                      }else {
                                        equation = equation + "7";
                                      }
                                    });
                                  },
                                  enabled: true,
                                  shadowDegree: ShadowDegree.light,
                                  height: 50,
                                  width: 85,
                                  duration: 20,
                                  child: Text("7",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: AnimatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(equation =="0") {
                                        equation = "8";
                                      }else {
                                        equation = equation + "8";
                                      }
                                    });
                                  },
                                  enabled: true,
                                  shadowDegree: ShadowDegree.light,
                                  height: 50,
                                  width: 85,
                                  duration: 20,
                                  child: Text("8",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: AnimatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(equation =="0") {
                                        equation = "9";
                                      }else {
                                        equation = equation + "9";
                                      }
                                    });
                                  },
                                  enabled: true,
                                  shadowDegree: ShadowDegree.light,
                                  height: 50,
                                  width: 85,
                                  duration: 20,
                                  child: Text("9",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: AnimatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(equation =="0") {
                                        equation = "-";
                                      }else {
                                        equation = equation + "-";
                                      }
                                    });
                                  },
                                  enabled: true,
                                  shadowDegree: ShadowDegree.light,
                                  height: 50,
                                  width: 85,
                                  duration: 20,
                                  child: Text("-",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),
                                  color: Colors.deepPurpleAccent,
                              ),
                            ),
                            ),

                          ]
                      ),
                      TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: AnimatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(equation =="0") {
                                        equation = "√";
                                      }else {
                                        equation = equation + "√";
                                      }
                                    });
                                  },
                                  enabled: true,
                                  shadowDegree: ShadowDegree.light,
                                  height: 50,
                                  width: 85,
                                  duration: 20,
                                  child: Text("√",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),
                                  color: Colors.pinkAccent,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: AnimatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(equation =="0") {
                                        equation = "0";
                                      }else {
                                        equation = equation + "0";
                                      }
                                    });
                                  },
                                  enabled: true,
                                  shadowDegree: ShadowDegree.light,
                                  height: 50,
                                  width: 85,
                                  duration: 20,
                                  child: Text("0",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: AnimatedButton(
                                  onPressed: () {
                                    setState(() {
                                      if(equation =="0") {
                                        equation = ".";
                                      }else {
                                        equation = equation + ".";
                                      }
                                    });
                                  },
                                  enabled: true,
                                  shadowDegree: ShadowDegree.light,
                                  height: 50,
                                  width: 85,
                                  duration: 20,
                                  child: Text(".",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w900),),
                                  color: Colors.pinkAccent,
                                ),
                              ),
                            ),

                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    end: Alignment.bottomLeft,
                                    begin: Alignment.topRight,
                                    colors: [
                                      Color(0xff622774),
                                      Color(0xffc53364)
                                    ]),

                                shape: BoxShape.circle,
                              ),
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                padding: EdgeInsets.all(16),
                                onPressed: () {
                                  setState(() {

                                  });
                                  expression = equation;
                                  expression = expression.replaceAll("*", "*");
                                  expression = expression.replaceAll("/", "/");
                                  expression = expression.replaceAll("√", "sqrt");

                                  try{
                                    Parser p = Parser();
                                    Expression exp = p.parse(expression);

                                    ContextModel cm = ContextModel();
                                    result = '= ${exp.evaluate(EvaluationType.REAL, cm)}';
                                  }catch(e){
                                    result = "Error";
                                  }
                                },
                                child: Text("=",style: TextStyle(fontSize: 25,color: Colors.black, fontWeight: FontWeight.w900),),
                              ),
                            )
                          ]
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}