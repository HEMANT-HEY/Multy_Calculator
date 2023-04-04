import 'package:flutter/material.dart';

import 'my_bmi.dart';
import 'my_pressure.dart';
import 'my_temparature.dart';

class Calculation extends StatefulWidget {
  const Calculation({Key? key}) : super(key: key);

  @override
  State<Calculation> createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
  var no1controller= TextEditingController();
  var no2controller=TextEditingController();
  var sum=0;
  var sub=0;
  var multiply=0;
  double divide=0;

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width*1,
            height: height*1,
            color: Colors.white,
          ),
          Container(
            width: width*1,
            height: height*0.398,
            color: Colors.white,
            child: Image.asset("Assets/business-accounting.png"),
          ),
          Padding(
            padding:EdgeInsets.only(top: height*0.4),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: SizedBox(
                      height: 45,
                      width: 300,
                      child: TextField(
                        controller: no1controller,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                         labelText: "No.1",
                          hintText: "Enter No.1",
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: SizedBox(
                      height: 45,
                      width: 300,
                      child: TextField(
                        controller: no2controller,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: "No.2",
                          hintText: "Enter No.2",
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 30
                          ),
                          Container(
                            width: width*0.4,
                            height: height*0.06,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orange,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 25,
                                  offset: Offset(5,5),
                                ),
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 25,
                                  offset: Offset(-5,-5),
                                ),
                              ]
                            ),
                            child: TextButton(
                              child: Text("SUM",style: TextStyle(color: Colors.white,fontSize:20),),
                              onPressed: (){
                                 sum=getValue(no1controller)+ getValue(no2controller);
                                print(sum);
                                setState(() {});
                              },
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            width: width*0.4,
                            height: height*0.06,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade300
                            ),
                            child: Center(child: Text(" $sum",style: TextStyle(color: Colors.black,fontSize: 20),)),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(
                              width: 30
                          ),
                          Container(
                            width: width*0.4,
                            height: height*0.06,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orange,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 25,
                                    offset: Offset(5,5),
                                  ),
                                  BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 25,
                                    offset: Offset(-5,-5),
                                  ),
                                ]
                            ),
                            child: TextButton(
                              child: Text("SUBSTRACT",style: TextStyle(color: Colors.white,fontSize:20),),
                              onPressed: (){
                                sub=getValue(no1controller)-getValue(no2controller);
                                print(sub);
                                setState(() {});
                              },
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            width: width*0.4,
                            height: height*0.06,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade300
                            ),
                            child: Center(child: Text("$sub",style: TextStyle(color: Colors.black,fontSize: 20),)),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(
                              width: 30
                          ),
                          Container(
                            width: width*0.4,
                            height: height*0.06,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orange,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 25,
                                    offset: Offset(5,5),
                                  ),
                                  BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 25,
                                    offset: Offset(-5,-5),
                                  ),
                                ]
                            ),
                            child: TextButton(
                              child: Text("MULTIPLY",style: TextStyle(color: Colors.white,fontSize:20),),
                              onPressed: (){
                                multiply=getValue(no1controller)*getValue(no2controller);
                                print(multiply);
                                setState(() {});
                              },
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            width: width*0.4,
                            height: height*0.06,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade300
                            ),
                            child: Center(child: Text("$multiply",style: TextStyle(color: Colors.black,fontSize: 20),)),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(
                              width: 30
                          ),
                          Container(
                            width: width*0.4,
                            height: height*0.06,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.orange,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 25,
                                    offset: Offset(5,5),
                                  ),
                                  BoxShadow(
                                    color: Colors.white,
                                    blurRadius: 25,
                                    offset: Offset(-5,-5),
                                  ),
                                ]
                            ),
                            child: TextButton(
                              child: Text("DVISION",style: TextStyle(color: Colors.white,fontSize:20),),
                              onPressed: (){
                                divide=getValue(no1controller)/getValue(no2controller);
                                print(divide);
                                setState(() {});
                              },
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            width: width*0.4,
                            height: height*0.06,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade300
                            ),
                            child: Center(child: Text("$divide",style: TextStyle(color: Colors.black,fontSize: 20),)),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: width*0.15),
                            child: Container(
                              width: width*0.3,
                                height: height*0.06,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.pinkAccent,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 20,
                                      offset: Offset(5,5),
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 15,
                                      offset: Offset(-5,-5),
                                    ),
                                  ]
                              ),
                              child: TextButton(
                                child: Text("Temparature",style: TextStyle(color: Colors.white,fontSize: 15),),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Temparature()));
                                },
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Container(
                              width: width*0.3,
                              height: height*0.06,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.pinkAccent,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 15,
                                      offset: Offset(5,5),
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 15,
                                      offset: Offset(-5,-5),
                                    ),
                                  ]
                              ),
                              child: TextButton(
                                child: Text("BMI",style: TextStyle(color: Colors.white,fontSize: 15),),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BmiCal()));
                                },
                              ),
                            ),
                          ),
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
    );
  }
  int getValue(TextEditingController controller){
    return int.parse(controller.text.toString());
  }
}
