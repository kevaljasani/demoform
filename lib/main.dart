import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: first(),
  darkTheme: ThemeData.dark(),
  debugShowCheckedModeBanner: false,));
}

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {

  bool t1=false;
  bool t2=false;
  bool t3=false;
  bool f1=false;

  int lan= 0;
  int lan1= 0;
  int lan2= 0;

  List Pro=["Computer","Tv","Ac"];
  List product=["Computer"];
  List product1=["Tv"];
  List product2=["Ac"];

  var num=['1', '2', '3', '4', '5'];
  String gender="";


  double a1=0;
  double b1=0;
  double c1=0;
  double amt=0;
  double amt1=0;
  double amt2=0;
  double max=0;
  double max1=0;
  double min=0;
  double min1=0;

  double k=0;
  double k1=0;
  double j=0;
  double total=0;
  double total1=0;
  double total2=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),

      body: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Checkbox(value: t1,
              activeColor: Colors.orange,
              hoverColor: Colors.orangeAccent,
              checkColor: Colors.black,

              onChanged: (value) {

               t1=value!;

              if(t1 = value!)
                {
                }
              else
                {
                  a1=0;
                  amt=0;
                  lan=0;
                }

              setState(() {

              });
            },),
            Text("     Computer          --    5000     "),

//------------------------------------------------------------------------------------------------------------------
                DropdownButton(
                  value: lan,
                  items: [
                    DropdownMenuItem(child: Text('0'),value: 0),
                    DropdownMenuItem(child: Text('1'),value: 1),
                    DropdownMenuItem(child: Text('2'),value: 2),
                    DropdownMenuItem(child: Text('3'),value: 3),
                    DropdownMenuItem(child: Text('4'),value: 4),
                    DropdownMenuItem(child: Text('5'),value: 5),
                  ],
                  onChanged: (value) {

                    lan = value!;

                    if(lan >= value!)
                      {
                        a1=value as double;
                        amt=5000*a1;
                        setState(() {

                        });
                      }
                    else
                      {

                      }
                    setState(() {

                    });
                  },
                )


            ],),

//------------------------------------------------------------------------------------------------------------------

        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Checkbox(value: t2,
              activeColor: Colors.white,
              hoverColor: Colors.white70,
              checkColor: Colors.black,
              onChanged: (value) {
              //t2=value!;

              if(t2 = value!)
              {

              }
              else
              {
                b1=0;
                amt1=0;
                lan1=0;
                setState(() {

                });
              }
              setState(() {

              });
            },),
            Text("         Tv              --        10000     "),

//------------------------------------------------------------------------------------------------------------------
            DropdownButton(
              value: lan1,
              items: [
                DropdownMenuItem(child: Text('0'),value: 0),
                DropdownMenuItem(child: Text('1'),value: 1),
                DropdownMenuItem(child: Text('2'),value: 2),
                DropdownMenuItem(child: Text('3'),value: 3),
                DropdownMenuItem(child: Text('4'),value: 4),
                DropdownMenuItem(child: Text('5'),value: 5),
              ],
              onChanged: (value) {

                lan1=value!;

                if(lan1 >= value!)
                {
                  b1=value as double;
                  amt1=10000*b1;
                  setState(() {

                  });
                }
                else
                {

                }
                setState(() {

                });
              },)
          ],),

//------------------------------------------------------------------------------------------------------------------

        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Checkbox(value: t3,
              activeColor: Colors.green,
              hoverColor: Colors.lightGreen,
              checkColor: Colors.white,
              onChanged: (value) {
              //t3=value!;

              if(t3 = value!)
              {

              }
              else
              {
                c1=0;
                amt2=0;
                lan2=0;
                setState(() {

                });
              }

              setState(() {

              });
            },),
            Text("         Ac              --        12000     "),

//------------------------------------------------------------------------------------------------------------------
            DropdownButton(
              value: lan2,
              items: [
                DropdownMenuItem(child: Text('0'),value: 0),
                DropdownMenuItem(child: Text('1'),value: 1,),
                DropdownMenuItem(child: Text('2'),value: 2),
                DropdownMenuItem(child: Text('3'),value: 3),
                DropdownMenuItem(child: Text('4'),value: 4),
                DropdownMenuItem(child: Text('5'),value: 5),
              ],
              onChanged: (value) {

                lan2=value!;

                if(lan2 >= value!)
                {
                  c1=value as double;
                  amt2=12000*c1;
                  setState(() {

                  });
                }
                else
                {

                }

                setState(() {

                });
              },)

          ],),

//------------------------------------------------------------------------------------------------------------------

        Row(children: [
          Padding(padding: EdgeInsets.only(left: 100,top: 40,right: 70)),
          Radio(value: "male", groupValue: gender,
            activeColor: Colors.blue,
            focusColor: Colors.orangeAccent,
            onChanged: (value) {
            gender=value!;

            if(gender == value)
              {

                total=amt+amt1+amt2;
                max=(total * 10 /(100));
                max1=total-max;
                total2=max1;
                setState(() {

                });
              }

            setState(() {

            });
          },),
          Text("Male"),

//------------------------------------------------------------------------------------------------------------------
          Radio(value: "female", groupValue: gender,
            activeColor: Colors.pink,
            onChanged: (value) {
            gender=value!;

            if(gender == value)
              {

                total=amt+amt1+amt2;
                min=(total *5 /(100));
                min1=total-min;
                total2=min1;
                setState(() {

                });
              }

            setState(() {

            });
          },),
          Text("Female"),

        ],),

//------------------------------------------------------------------------------------------------------------------

//       Expanded(child: ListView.builder(
//         itemCount: 1,
//         itemBuilder: (context, index) {
//
//         return Expanded(child: Column(children: [
//
//            Card(
//             child: ListTile(
//               tileColor: Colors.orange,
//               title: (t1 == true)?Text("       ${product}          " "${a1}            " "${amt}          ",
//                 style: TextStyle(fontSize: 20,color: Colors.black),) : null,),
//           ) ,
//
// //------------------------------------------------------------------------------------------------------------------
//            (t2 == true)? Card(
//             child: ListTile(
//                 tileColor: Colors.white,
//                 title: (t2 == true)?Text("       ${product1}          " "${b1}            " "${amt1}          ",
//                   style: TextStyle(fontSize: 20,color: Colors.black),) : null),
//           ) : widget,
// //------------------------------------------------------------------------------------------------------------------
//           Card(
//             child: ListTile(
//               tileColor: Colors.green,
//               title: (t3 == true)?Text("       ${product2}          " "${c1}            " "${amt2}          ",
//                 style: TextStyle(fontSize: 20,color: Colors.black),) : null,),
//           ),
//
//         ],),);
//       },),
//      ) ,

        Expanded(child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {

            return Column(children: [

              (t1 == true)?Card(
              child: ListTile(
                tileColor: Colors.orange,
                title: (t1 == true)?Text("       ${product}          " "${a1}            " "${amt}          ",
                  style: TextStyle(fontSize: 20,color: Colors.black),) : null,),
            ) : widget,

            ],);
          },),
        ),

        Expanded(child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {

            return Column(children: [

              (t2 == true)?Card(
                child: ListTile(
                  tileColor: Colors.white,
                  title: (t2 == true)?Text("       ${product1}          " "${b1}            " "${amt1}          ",
                    style: TextStyle(fontSize: 20,color: Colors.black),) : null,),
              ) : widget,
            ],);
          },),
        ),

        Expanded(child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {

            return Column(children: [

              (t3 == true)?Card(
              child: ListTile(
                tileColor: Colors.green,
                title: (t3 == true)?Text("       ${product2}          " "${c1}            " "${amt2}          ",
                  style: TextStyle(fontSize: 20,color: Colors.black),) : null,),
            ) : widget,
            ],);
          },),
        ),

//------------------------------------------------------------------------------------------------------------------

        Container(
          margin: EdgeInsets.only(bottom: 350),
          height: 50,
          width: 200,
          color: Colors.white,
          alignment: Alignment.center,
          child: Text("Total  :-  ${total2}",style: TextStyle(color: Colors.black,fontSize: 25),),
        ),

      ],),
    );
  }
}


// Card(
// child: Column(
// children: [
// ListTile(
// tileColor: Colors.orange,
// title: Text("       ${product}          " "${a1}            " "${amt}          ",
// style: TextStyle(fontSize: 20,color: Colors.black),),
// ),
//
// ListTile(
// tileColor: Colors.orange,
// title: Text("       ${product1}    " "${b1}         " "${amt1}          ",
// style: TextStyle(fontSize: 20,color: Colors.black),),
// ),
//
// ListTile(
// tileColor: Colors.orange,
// title: Text("       ${product2}     " "${c1}        " "${amt2}          ",
// style: TextStyle(fontSize: 20,color: Colors.black),),
// )
//
// ],
// ),
// );








// Expanded(child: ListView.builder(
// itemCount: 1,
// itemBuilder: (context, index) {
//
// return Expanded(child: Column(children: [
//
// Card(
// child: ListTile(
// tileColor: Colors.orange,
// title: (t1 == true)?Text("       ${product}          " "${a1}            " "${amt}          ",
// style: TextStyle(fontSize: 20,color: Colors.black),) : null,),
// ) ,
//
// //------------------------------------------------------------------------------------------------------------------
// (t2 == true)? Card(
// child: ListTile(
// tileColor: Colors.white,
// title: (t2 == true)?Text("       ${product1}          " "${b1}            " "${amt1}          ",
// style: TextStyle(fontSize: 20,color: Colors.black),) : null),
// ) : widget,
// //------------------------------------------------------------------------------------------------------------------
// Card(
// child: ListTile(
// tileColor: Colors.green,
// title: (t3 == true)?Text("       ${product2}          " "${c1}            " "${amt2}          ",
// style: TextStyle(fontSize: 20,color: Colors.black),) : null,),
// ),
//
// ],),);
// },),
// ),