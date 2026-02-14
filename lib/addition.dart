import 'package:flutter/material.dart';
import 'package:input/main.dart';

class buttons extends StatefulWidget {
  const buttons({super.key});
  @override
  State<buttons> createState() => _buttonsState();
}

class _buttonsState extends State<buttons> {
  int add=0;
  TextEditingController n1=TextEditingController();
  TextEditingController n2=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 80,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Addition',style: TextStyle(fontWeight: FontWeight.bold),),
        ],),
        SizedBox(height: 50,),
        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter the value'
            ),
            controller: n1,
          ),
        ),
        
        Column(
          children: [
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
          ],
        ),
        TextButton(onPressed: (){
          int a,b;
          a=int.parse(n1.text);
          b=int.parse(n2.text);
          add=a+b;
          setState(() {
            
          });
        },
            child:
            Column(
              children: [
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.red),
                  ),
                  child:
                  Center(child: Text('Addition',style: TextStyle(color: Colors.red),)),
                    ),
              ],
            )),
        Text('Result=$add'),
      ],),

    );
  }
}
