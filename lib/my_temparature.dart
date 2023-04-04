import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Temparature extends StatefulWidget {
  const Temparature({Key? key}) : super(key: key);

  @override
  State<Temparature> createState() => _TemparatureState();
}

class _TemparatureState extends State<Temparature> {
  var celcontroller=TextEditingController();
  var fahcontroller=TextEditingController();
  double fah=0.0;
  double cal=0.0;

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width:width*1,
            height: height*1,
            color: Colors.white,
          ),
          Padding(
            padding:EdgeInsets.only(top: height*0.14),
            child: Container(
              width: width*1,
              height: height*0.25,
              child: Lottie.asset("Assets/62290-kelvin-temperature-scale-conversion.json"),
            ),
          ),
          Lottie.asset("Assets/102873-clouds-loop.json"),
          Padding(
            padding:EdgeInsets.only(left: width*0.1),
            child: Column(
              children: [
                Padding(
                  padding:EdgeInsets.only(top: height*0.4,right: width*0.3,left: width*0.2),
                  child: TextField(
                    controller: celcontroller,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText:"celsius",
                      hintText: "in Celsius value",
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      height: height*0.06,
                      width: width*0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orange,
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
                      child: TextButton(onPressed: (){
                       fah=(((getValue(celcontroller))*9+160)/5) as double;
                        print(fah);
                        setState(() {

                        });
                      },
                        child: Text("Fahrenheit",style: TextStyle(color: Colors.white,fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: height*0.06,
                      width: width*0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade300,
                      ),
                      child:Center(child: Text("$fah",style: TextStyle(color: Colors.black,fontSize: 25),)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding:EdgeInsets.only(top: height*0.6,left: width*0.27),
            child: SizedBox(
              width: 170,
              child: TextField(
                controller: fahcontroller,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText:"frnht.",
                  hintText: "in Celsius value",
                  fillColor: Colors.grey.shade300,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding:EdgeInsets.only(top: height*0.7),
            child: Row(
              children: [
                Padding(
                  padding:EdgeInsets.only(left: width*0.1),
                  child: Container(
                    height: height*0.06,
                    width: width*0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.orange,
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
                    child: TextButton(onPressed: (){
                      cal=((5*(getValue(fahcontroller))-160)/9) as double;
                      print(cal);
                      setState(() {

                      });
                    },
                      child: Text("Celsius",style: TextStyle(color: Colors.white,fontSize: 20),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  height: height*0.06,
                  width: width*0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade300,
                  ),
                  child:Center(child: Text("$cal",style: TextStyle(color: Colors.black,fontSize: 25),)),
                ),
              ],
            ),
          ),
          Padding(
            padding:EdgeInsets.only(top: height*0.12,left: width*0.05),
            child: Container(
              width: width*0.1,
              height: height*0.05,
              child: IconButton(onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back,color: Colors.white,),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.orange,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 11,
                    offset: Offset(5,5),
                    color: Colors.grey,
                  ),
                  BoxShadow(
                    blurRadius: 11,
                    offset: Offset(-5,-5),
                    color: Colors.white,
                  ),
                ]
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
