import 'package:flutter/material.dart';

class result extends StatefulWidget {
  const result({super.key});

  @override
  State<result> createState() => _resultState();
}

class _resultState extends State<result> {
  int add=0;
  double avg=0.0;
  TextEditingController n1=TextEditingController();
  TextEditingController n2=TextEditingController();
  TextEditingController n3=TextEditingController();
  TextEditingController n4=TextEditingController();
  TextEditingController n5=TextEditingController();
  String error='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result Sheet',style: TextStyle(color: Colors.black),),
      ),
      backgroundColor: Colors.black87,
      body: 
      SingleChildScrollView(
        child: Column(
          children: [
          // SizedBox(height: 40,),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Text('Result',style: TextStyle(fontWeight: FontWeight.bold),),
          //   ],),
          // SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white),
            ),
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'English',
                hintStyle: TextStyle(color: Colors.white)
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
                  border: Border.all(color: Colors.white),
                ),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Urdu',
                    hintStyle: TextStyle(color: Colors.white)
                  ),
                  controller: n2,
                ),
              ),
            ],
          ),
        
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white),
                ),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Math',
                    hintStyle: TextStyle(color: Colors.white)
                  ),
                  controller: n3,
                ),
              ),
            ],
          ),
        
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white),
                ),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Biology',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  controller: n4,
                ),
              ),
            ],
          ),
        
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white),
                ),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Islamiyat',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  controller: n5,
                ),
              ),
            ],
          ),
          TextButton(onPressed: (){
            if(n1.text=='' ||n2.text==''  ||n3.text==''  ||n4.text==''  ||n5.text=='')
              {
                error='Please fill all blanks';
                setState(() {

                });
              }
            else
              {
                error='';
                int a,b,c,d,e;
                a=int.parse(n1.text);
                b=int.parse(n2.text);
                c=int.parse(n3.text);
                d=int.parse(n4.text);
                e=int.parse(n5.text);
                add=a+b+c+d+e;
                avg= add*100/500;
                setState(() {

                });
              }
          },
              child:
              Column(
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red
                      // border: Border.all(color: Colors.red),
                    ),
                    child:
                    Center(child: Text('Result',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                  ),
                ],
              )),
          Text('$error',style: TextStyle(color: Colors.red),),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            // SizedBox(width:  10,),
            Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white),
              ),
              child:
              Center(child: Text('Result=$add',style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(width: 10,),
            Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white),
                ),
                child:
                Center(child: Text('Average=$avg',style: TextStyle(color: Colors.white),),)
            ),
          ],)

        ],),
      ),
    );
  }
}
