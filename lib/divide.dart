import 'package:flutter/material.dart';

class divide extends StatefulWidget {
  const divide({super.key});

  @override
  State<divide> createState() => _divideState();
}

class _divideState extends State<divide> {
  double div=0;
  TextEditingController n1=TextEditingController();
  TextEditingController n2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Divide',style: TextStyle(fontWeight: FontWeight.bold),),
        ],),
        SizedBox(height: 30,),
        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter the value',
            ),
            controller: n1,
          ),
        ),

        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter the value',
            ),
            controller: n2,
          ),
        ),

        Container(
          height: 40,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.red),
          ),
          child: TextButton(onPressed: (){
                double a,b;
                a=double.parse(n1.text);
                b=double.parse(n2.text);
                  div=a/b;
                setState(() {

                });
          },
              child: Text('Division'),),
        ),
        Text('div:$div'),


      ],),
    );
  }
}
