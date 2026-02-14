import 'package:flutter/material.dart';

class substraction extends StatefulWidget {
  const substraction({super.key});

  @override
  State<substraction> createState() => _substractionState();
}

class _substractionState extends State<substraction> {
  int sub=0;
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
          Text('Substraction',style: TextStyle(fontWeight: FontWeight.bold),),
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
          child:TextButton(onPressed: (){
            int a,b;
            a=int.parse(n1.text);
            b=int.parse(n2.text);
            sub=a-b;
            setState(() {

            });
          },
              child: Text('Substraction',style: TextStyle(color: Colors.red),)),
        ),
        Text('Result=$sub'),
      ],),
    );
  }
}
