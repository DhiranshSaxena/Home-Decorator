import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  bool dashboard = true;
  bool visible = true;
  double intensity = 0.0;
  Color _colors = Colors.orangeAccent;

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff1556bf),
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                 children: <Widget>[
                   Positioned(
                       child: Container(
                         child: SvgPicture.asset("assets/images/Circles.svg",
                           height: 350,
                           width: MediaQuery.of(context).size.width,
                         ),
                       ),
                   ),
                   Positioned(
                     top: 55,
                     left: 30,
                     child: AnimatedOpacity(
                       duration: Duration(milliseconds: 500),
                       opacity: visible ? 0.0 : 1.0,
                       child:InkWell(
                         onTap: (){
                           setState(() {
                             visible = true;
                             dashboard = true;
                           });
                         },
                         child: Container(
                           child: SvgPicture.asset("assets/images/arrow.svg", height: 20, width: 20,),
                         ),
                       ),
                     ),
                   ),
                   Positioned(
                     top: 55,
                     left: 310,
                     child: AnimatedOpacity(
                       duration: Duration(milliseconds: 500),
                       opacity: visible ? 1.0 : 0.0,
                       child:Container(
                           child: SvgPicture.asset("assets/images/user.svg"),
                         ),
                     ),
                   ),
                   Positioned(
                     top: 60,
                     left: 30,
                     child: AnimatedOpacity(
                       duration: Duration(milliseconds: 500),
                       opacity: visible ? 1.0 : 0.0,
                           child: Text("Control \nPanel", style: TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                             fontSize: 28
                           ),),

                     ),
                   ),
                   Positioned(
                     top: 50,
                     left: 60,
                     child: AnimatedOpacity(
                       duration: Duration(milliseconds: 500),
                       opacity: visible ? 0.0 : 1.0,
                       child: InkWell(
                         onTap: (){
                           setState(() {
                             dashboard = true;
                             visible = true;
                           });
                         },
                         child: Text("Bed \nRoom", style: TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                             fontSize: 28
                         ),),
                       ),

                     ),
                   ),
                   AnimatedPositioned(
                     duration: Duration(milliseconds: 1000),
                     top: dashboard ? 50 : 125,
                     left: 30,
                     child: AnimatedOpacity(
                       duration: Duration(milliseconds: 500),
                       opacity: visible ? 0.0 : 1.0,
                       child: InkWell(
                         onTap: (){
                           setState(() {
                             dashboard = true;
                             visible = true;
                           });
                         },
                         child: Text("4 Lights", style: TextStyle(
                             color: Colors.amberAccent,
                             fontWeight: FontWeight.bold,
                             fontSize: 24
                         ),),
                       ),

                     ),
                   ),
                   AnimatedPositioned(
                     duration: Duration(milliseconds: 1000),
                     top: 0,
                     left: 230,
                     child: AnimatedOpacity(
                       duration: Duration(milliseconds: 500),
                       opacity: visible ? 0.0 : 1.0,
                       child: Container(
                         child: SvgPicture.asset("assets/images/color.svg", color: Colors.black38),
                       ),
                     ),
                   ),
                   AnimatedPositioned(
                     duration: Duration(milliseconds: 1000),
                     top: 0,
                     left: 230,
                     child: AnimatedOpacity(
                       duration: Duration(milliseconds: 500),
                       opacity: visible ? 0.0 : 1.0,
                       child: Container(
                         child: SvgPicture.asset("assets/images/lamp.svg", color: _colors.withOpacity(intensity)),
                       ),
                     ),
                   ),
                   AnimatedPositioned(
                     duration: Duration(milliseconds: 1000),
                     top: 0,
                     left: 230,
                     child: AnimatedOpacity(
                       duration: Duration(milliseconds: 500),
                       opacity: visible ? 0.0 : 1.0,
                       child: Container(
                         child: SvgPicture.asset("assets/images/fench.svg",),
                       ),
                     ),
                   ),
                   AnimatedPositioned(
                     duration: Duration(milliseconds: 500),
                       top: dashboard ? 160 : 250,
                       child: Container(
                         height: MediaQuery.of(context).size.height-80,
                         width: MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.only(
                               topRight: Radius.circular(25),
                               topLeft: Radius.circular(25),
                             )
                         ),
                         child: Stack(
                           fit: StackFit.expand,
                           children: [
                             Padding(
                               padding:const EdgeInsets.only(top:40.0),
                               child: AnimatedOpacity(
                                 duration: Duration(milliseconds: 500),
                                 opacity: visible ? 1.0 : 0.0,
                                 child: GridView.count(
                                     crossAxisCount: 2,
                                     childAspectRatio: 1,
                                     crossAxisSpacing: 30,
                                     mainAxisSpacing: 25,
                                     padding: const EdgeInsets.all(30),
                                     children: <Widget>[
                                       Container(
                                         decoration: BoxDecoration(
                                           color: Colors.white,
                                           borderRadius: BorderRadius.circular(25),
                                           boxShadow: [
                                             BoxShadow(
                                               color: Colors.grey.withOpacity(0.5),
                                               spreadRadius: 5,
                                               blurRadius: 7,
                                               offset: Offset(0, 3), // changes position of shadow
                                             ),
                                           ],
                                         ),
                                         child: ClipRRect(
                                           borderRadius: BorderRadius.circular(25),
                                           child: Container(
                                             // padding: EdgeInsets.all(20),
                                             decoration: BoxDecoration(
                                               color: Colors.white,
                                               borderRadius: BorderRadius.circular(25),
                                               boxShadow: [
                                                 BoxShadow(
                                                   color: Colors.black87,
                                                   spreadRadius: 5,
                                                   blurRadius: 7,
                                                   offset: Offset(0, 15.5), // changes position of shadow
                                                 ),
                                               ],
                                             ),
                                             child: Material(
                                               color: Colors.transparent,
                                               child: InkWell(
                                                 onTap: (){
                                                   setState(() {
                                                     dashboard = false;
                                                     visible = false;
                                                   });
                                                 },
                                                 child: Row(
                                                   children: [
                                                     SizedBox(
                                                       width: 20,
                                                     ),
                                                     Column(
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: <Widget>[
                                                         SizedBox(
                                                           height: 15,
                                                         ),
                                                         SvgPicture.asset("assets/images/grid1.svg", height: 55,width: 55,),
                                                         SizedBox(
                                                           height: 20,
                                                         ),
                                                         Text(
                                                           "Bed Room",
                                                           textAlign: TextAlign.left,
                                                           style: TextStyle(
                                                               fontSize: 20,
                                                               fontWeight: FontWeight.bold,
                                                               color: Colors.black87
                                                           ),
                                                         ),
                                                         Text(
                                                           "4 Lights",
                                                           textAlign: TextAlign.left,
                                                           style: TextStyle(
                                                               fontSize: 18,
                                                               fontWeight: FontWeight.bold,
                                                               color: Colors.deepOrangeAccent
                                                           ),
                                                         ),
                                                         SizedBox(
                                                           height: 10,
                                                         ),
                                                       ],
                                                     ),
                                                   ],
                                                 ),

                                               ),
                                             ),
                                           ),

                                         ),
                                       ),
                                       Container(
                                         decoration: BoxDecoration(
                                           color: Colors.white,
                                           borderRadius: BorderRadius.circular(25),
                                           boxShadow: [
                                             BoxShadow(
                                               color: Colors.grey.withOpacity(0.5),
                                               spreadRadius: 5,
                                               blurRadius: 7,
                                               offset: Offset(0, 3), // changes position of shadow
                                             ),
                                           ],
                                         ),
                                         child: ClipRRect(
                                           borderRadius: BorderRadius.circular(25),
                                           child: Container(
                                             // padding: EdgeInsets.all(20),
                                             decoration: BoxDecoration(
                                               color: Colors.white,
                                               borderRadius: BorderRadius.circular(25),
                                               boxShadow: [
                                                 BoxShadow(
                                                   color: Colors.black87,
                                                   spreadRadius: 5,
                                                   blurRadius: 7,
                                                   offset: Offset(0, 15.5), // changes position of shadow
                                                 ),
                                               ],
                                             ),
                                             child: Material(
                                               color: Colors.transparent,
                                               child: InkWell(
                                                 onTap: (){},
                                                 child: Row(
                                                   children: [
                                                     SizedBox(
                                                       width: 20,
                                                     ),
                                                     Column(
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: <Widget>[
                                                         SizedBox(
                                                           height: 15,
                                                         ),
                                                         SvgPicture.asset("assets/images/grid2.svg", height: 55,width: 55,),
                                                         Spacer(),
                                                         Text(
                                                           "Living Room",
                                                           textAlign: TextAlign.left,
                                                           style: TextStyle(
                                                               fontSize: 20,
                                                               fontWeight: FontWeight.bold,
                                                               color: Colors.black87
                                                           ),
                                                         ),
                                                         Text(
                                                           "2 Lights",
                                                           textAlign: TextAlign.left,
                                                           style: TextStyle(
                                                               fontSize: 18,
                                                               fontWeight: FontWeight.bold,
                                                               color: Colors.deepOrangeAccent
                                                           ),
                                                         ),
                                                         Spacer(),
                                                       ],
                                                     ),
                                                   ],
                                                 ),

                                               ),
                                             ),
                                           ),

                                         ),
                                       ),
                                       Container(
                                         decoration: BoxDecoration(
                                           color: Colors.white,
                                           borderRadius: BorderRadius.circular(25),
                                           boxShadow: [
                                             BoxShadow(
                                               color: Colors.grey.withOpacity(0.5),
                                               spreadRadius: 5,
                                               blurRadius: 7,
                                               offset: Offset(0, 3), // changes position of shadow
                                             ),
                                           ],
                                         ),
                                         child: ClipRRect(
                                           borderRadius: BorderRadius.circular(25),
                                           child: Container(
                                             // padding: EdgeInsets.all(20),
                                             decoration: BoxDecoration(
                                               color: Colors.white,
                                               borderRadius: BorderRadius.circular(25),
                                               boxShadow: [
                                                 BoxShadow(
                                                   color: Colors.black87,
                                                   spreadRadius: 5,
                                                   blurRadius: 7,
                                                   offset: Offset(0, 15.5), // changes position of shadow
                                                 ),
                                               ],
                                             ),
                                             child: Material(
                                               color: Colors.transparent,
                                               child: InkWell(
                                                 onTap: (){},
                                                 child: Row(
                                                   children: [
                                                     SizedBox(
                                                       width: 20,
                                                     ),
                                                     Column(
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: <Widget>[
                                                         SizedBox(
                                                           height: 15,
                                                         ),
                                                         SvgPicture.asset("assets/images/grid3.svg", height: 55,width: 55,),
                                                         Spacer(),
                                                         Text(
                                                           "Kitchen",
                                                           textAlign: TextAlign.left,
                                                           style: TextStyle(
                                                               fontSize: 20,
                                                               fontWeight: FontWeight.bold,
                                                               color: Colors.black87
                                                           ),
                                                         ),
                                                         Text(
                                                           "5 Lights",
                                                           textAlign: TextAlign.left,
                                                           style: TextStyle(
                                                               fontSize: 18,
                                                               fontWeight: FontWeight.bold,
                                                               color: Colors.deepOrangeAccent
                                                           ),
                                                         ),
                                                         Spacer(),
                                                       ],
                                                     ),
                                                   ],
                                                 ),

                                               ),
                                             ),
                                           ),

                                         ),
                                       ),
                                       Container(
                                         decoration: BoxDecoration(
                                           color: Colors.white,
                                           borderRadius: BorderRadius.circular(25),
                                           boxShadow: [
                                             BoxShadow(
                                               color: Colors.grey.withOpacity(0.5),
                                               spreadRadius: 5,
                                               blurRadius: 7,
                                               offset: Offset(0, 3), // changes position of shadow
                                             ),
                                           ],
                                         ),
                                         child: ClipRRect(
                                           borderRadius: BorderRadius.circular(25),
                                           child: Container(
                                             // padding: EdgeInsets.all(20),
                                             decoration: BoxDecoration(
                                               color: Colors.white,
                                               borderRadius: BorderRadius.circular(25),
                                               boxShadow: [
                                                 BoxShadow(
                                                   color: Colors.black87,
                                                   spreadRadius: 5,
                                                   blurRadius: 7,
                                                   offset: Offset(0, 15.5), // changes position of shadow
                                                 ),
                                               ],
                                             ),
                                             child: Material(
                                               color: Colors.transparent,
                                               child: InkWell(
                                                 onTap: (){},
                                                 child: Row(
                                                   children: [
                                                     SizedBox(
                                                       width: 20,
                                                     ),
                                                     Column(
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: <Widget>[
                                                         SizedBox(
                                                           height: 15,
                                                         ),
                                                         SvgPicture.asset("assets/images/grid4.svg", height: 55,width: 55,),
                                                         Spacer(),
                                                         Text(
                                                           "Bathroom",
                                                           textAlign: TextAlign.left,
                                                           style: TextStyle(
                                                               fontSize: 20,
                                                               fontWeight: FontWeight.bold,
                                                               color: Colors.black87
                                                           ),
                                                         ),
                                                         Text(
                                                           "1 Light",
                                                           textAlign: TextAlign.left,
                                                           style: TextStyle(
                                                               fontSize: 18,
                                                               fontWeight: FontWeight.bold,
                                                               color: Colors.deepOrangeAccent
                                                           ),
                                                         ),
                                                         Spacer(),
                                                       ],
                                                     ),
                                                   ],
                                                 ),

                                               ),
                                             ),
                                           ),

                                         ),
                                       ),
                                       Container(
                                         decoration: BoxDecoration(
                                           color: Colors.white,
                                           borderRadius: BorderRadius.circular(25),
                                           boxShadow: [
                                             BoxShadow(
                                               color: Colors.grey.withOpacity(0.5),
                                               spreadRadius: 5,
                                               blurRadius: 7,
                                               offset: Offset(0, 3), // changes position of shadow
                                             ),
                                           ],
                                         ),
                                         child: ClipRRect(
                                           borderRadius: BorderRadius.circular(25),
                                           child: Container(
                                             // padding: EdgeInsets.all(20),
                                             decoration: BoxDecoration(
                                               color: Colors.white,
                                               borderRadius: BorderRadius.circular(25),
                                               boxShadow: [
                                                 BoxShadow(
                                                   color: Colors.black87,
                                                   spreadRadius: 5,
                                                   blurRadius: 7,
                                                   offset: Offset(0, 15.5), // changes position of shadow
                                                 ),
                                               ],
                                             ),
                                             child: Material(
                                               color: Colors.transparent,
                                               child: InkWell(
                                                 onTap: (){},
                                                 child: Row(
                                                   children: [
                                                     SizedBox(
                                                       width: 20,
                                                     ),
                                                     Column(
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: <Widget>[
                                                         SizedBox(
                                                           height: 15,
                                                         ),
                                                         SvgPicture.asset("assets/images/grid5.svg", height: 55,width: 55,),
                                                         Spacer(),
                                                         Text(
                                                           "Outdoor",
                                                           textAlign: TextAlign.left,
                                                           style: TextStyle(
                                                               fontSize: 20,
                                                               fontWeight: FontWeight.bold,
                                                               color: Colors.black87
                                                           ),
                                                         ),
                                                         Text(
                                                           "5 Lights",
                                                           textAlign: TextAlign.left,
                                                           style: TextStyle(
                                                               fontSize: 18,
                                                               fontWeight: FontWeight.bold,
                                                               color: Colors.deepOrangeAccent
                                                           ),
                                                         ),
                                                         Spacer(),
                                                       ],
                                                     ),
                                                   ],
                                                 ),

                                               ),
                                             ),
                                           ),

                                         ),
                                       ),
                                       Container(
                                         decoration: BoxDecoration(
                                           color: Colors.white,
                                           borderRadius: BorderRadius.circular(25),
                                           boxShadow: [
                                             BoxShadow(
                                               color: Colors.grey.withOpacity(0.5),
                                               spreadRadius: 5,
                                               blurRadius: 7,
                                               offset: Offset(0, 3), // changes position of shadow
                                             ),
                                           ],
                                         ),
                                         child: ClipRRect(
                                           borderRadius: BorderRadius.circular(25),
                                           child: Container(
                                             // padding: EdgeInsets.all(20),
                                             decoration: BoxDecoration(
                                               color: Colors.white,
                                               borderRadius: BorderRadius.circular(25),
                                               boxShadow: [
                                                 BoxShadow(
                                                   color: Colors.black87,
                                                   spreadRadius: 5,
                                                   blurRadius: 7,
                                                   offset: Offset(0, 15.5), // changes position of shadow
                                                 ),
                                               ],
                                             ),
                                             child: Material(
                                               color: Colors.transparent,
                                               child: InkWell(
                                                 onTap: (){},
                                                 child: Row(
                                                   children: [
                                                     SizedBox(
                                                       width: 20,
                                                     ),
                                                     Column(
                                                       crossAxisAlignment: CrossAxisAlignment.start,
                                                       children: <Widget>[
                                                         SizedBox(
                                                           height: 15,
                                                         ),
                                                         SvgPicture.asset("assets/images/grid6.svg", height: 55,width: 55,),
                                                         Spacer(),
                                                         Text(
                                                           "Balcony",
                                                           textAlign: TextAlign.left,
                                                           style: TextStyle(
                                                               fontSize: 20,
                                                               fontWeight: FontWeight.bold,
                                                               color: Colors.black87
                                                           ),
                                                         ),
                                                         Text(
                                                           "2 Lights",
                                                           textAlign: TextAlign.left,
                                                           style: TextStyle(
                                                               fontSize: 18,
                                                               fontWeight: FontWeight.bold,
                                                               color: Colors.deepOrangeAccent
                                                           ),
                                                         ),
                                                         Spacer(),
                                                       ],
                                                     ),
                                                   ],
                                                 ),

                                               ),
                                             ),
                                           ),

                                         ),
                                       ),
                                     ],
                                   ),

                               ),
                             ),
                             Positioned(
                               top: 20,
                               child: AnimatedOpacity(
                                 duration: Duration(milliseconds: 500),
                                 opacity: visible ? 1.0 : 0.0,
                                 child: Column(
                                   children: [
                                     Row(
                                       children: [
                                         SizedBox(
                                           width: 30,
                                         ),
                                         Text("All Rooms",
                                           style: TextStyle(
                                             color: Color(0xff1556bf),
                                             fontWeight: FontWeight.bold,
                                             fontSize: 24
                                           ),
                                         ),
                                       ],
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                             Positioned(
                               top: 135,
                               child: AnimatedOpacity(
                                 duration: Duration(milliseconds: 500),
                                 opacity: visible ? 0.0 : 1.0,
                                 child: Column(
                                   children: [
                                     Row(
                                       children: [
                                         SizedBox(
                                           width: 30,
                                         ),
                                         Text("Colors",
                                           style: TextStyle(
                                               color: Color(0xff1556bf),
                                               fontWeight: FontWeight.bold,
                                               fontSize: 24
                                           ),
                                         ),
                                       ],
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                             Positioned(
                               top: 250,
                               child: AnimatedOpacity(
                                 duration: Duration(milliseconds: 500),
                                 opacity: visible ? 0.0 : 1.0,
                                 child: Column(
                                   children: [
                                     Row(
                                       children: [
                                         SizedBox(
                                           width: 30,
                                         ),
                                         Text("Scenes",
                                           style: TextStyle(
                                               color: Color(0xff1556bf),
                                               fontWeight: FontWeight.bold,
                                               fontSize: 24
                                           ),
                                         ),
                                       ],
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                             Positioned(
                               top: 20,
                               child: AnimatedOpacity(
                                 duration: Duration(milliseconds: 500),
                                 opacity: visible ? 0.0 : 1.0,
                                 child: Column(
                                   children: [
                                     Row(
                                       children: [
                                         SizedBox(
                                           width: 30,
                                         ),
                                         Text("Intensity",
                                           style: TextStyle(
                                               color: Color(0xff1556bf),
                                               fontWeight: FontWeight.bold,
                                               fontSize: 24
                                           ),
                                         ),
                                       ],
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                             Positioned(
                               top: 60,
                               child: AnimatedOpacity(
                                 duration: Duration(milliseconds: 500),
                                 opacity: visible ? 0.0 : 1.0,
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     SizedBox(
                                       width: MediaQuery.of(context).size.width*0.08
                                     ),
                                     Container(
                                       child: SvgPicture.asset("assets/images/closebulb.svg", height: 35, width: 35,),
                                     ),
                                     Container(
                                       width: 300,
                                       child: Slider(
                                         min: 0.0,
                                         max: 1.0,
                                         onChanged: (value){
                                           setState(() {
                                             intensity = value;
                                           });
                                         },
                                         activeColor: Colors.amber,
                                         value: intensity,
                                         divisions: 6,
                                       ),
                                     ),
                                     Container(
                                       child: SvgPicture.asset("assets/images/openbulb.svg", height: 40, width: 40,),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                             Positioned(
                               top: 180,
                               child: AnimatedOpacity(
                                 duration: Duration(milliseconds: 500),
                                 opacity: visible ? 0.0 : 1.0,
                                 child: Row(
                                   children: [
                                     SizedBox(
                                       width: 30,
                                     ),
                                     InkWell(
                                       onTap: (){
                                         setState(() {
                                           _colors = Colors.redAccent;
                                         });
                                       },
                                       child: CircleAvatar(
                                         radius: 15,
                                         backgroundColor: Colors.redAccent,
                                       ),
                                     ),
                                     SizedBox(
                                       width: 20,
                                     ),
                                     InkWell(
                                       onTap: (){
                                         setState(() {
                                           _colors = Colors.green;
                                         });
                                       },
                                       child: CircleAvatar(
                                         radius: 15,
                                         backgroundColor: Colors.green,
                                       ),
                                     ),
                                     SizedBox(
                                       width: 20,
                                     ),
                                     InkWell(
                                       onTap: (){
                                         setState(() {
                                           _colors = Colors.blueAccent;
                                         });
                                       },
                                       child: CircleAvatar(
                                         radius: 15,
                                         backgroundColor: Colors.blueAccent,
                                       ),
                                     ),
                                     SizedBox(
                                       width: 20,
                                     ),
                                     InkWell(
                                       onTap: (){
                                         setState(() {
                                           _colors = Colors.indigo;
                                         });
                                       },
                                       child: CircleAvatar(
                                         radius: 15,
                                         backgroundColor: Colors.indigo,
                                       ),
                                     ),
                                     SizedBox(
                                       width: 20,
                                     ),
                                     InkWell(
                                       onTap: (){
                                         setState(() {
                                           _colors = Colors.deepPurple;
                                         });
                                       },
                                       child: CircleAvatar(
                                         radius: 15,
                                         backgroundColor: Colors.deepPurple,
                                       ),
                                     ),
                                     SizedBox(
                                       width: 20,
                                     ),
                                     InkWell(
                                       onTap: (){
                                         setState(() {
                                           _colors = Colors.brown;
                                         });
                                       },
                                       child: CircleAvatar(
                                         radius: 15,
                                         backgroundColor: Colors.brown,
                                       ),
                                     ),
                                     SizedBox(
                                       width: 20,
                                     ),
                                     Container(
                                       decoration: BoxDecoration(
                                         shape: BoxShape.circle,
                                         boxShadow: [
                                           BoxShadow(
                                             color: Colors.grey.withOpacity(0.5),
                                             spreadRadius: 2,
                                             blurRadius: 2,
                                             offset: Offset(0, 3), // changes position of shadow
                                           ),
                                         ],
                                       ),
                                       child: CircleAvatar(
                                         radius: 15,
                                         backgroundColor: Colors.white,
                                         child: SvgPicture.asset("assets/images/plus.svg"),
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                             Positioned(
                               top: 300,
                               child: AnimatedOpacity(
                                 duration: Duration(milliseconds: 500),
                                 opacity: visible ? 0.0 : 1.0,
                                 child: Container(
                                   width: MediaQuery.of(context).size.width,
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       DecoratedBox(
                                         decoration: BoxDecoration(
                                           gradient: LinearGradient(
                                               colors: [
                                                 Colors.redAccent,
                                                 Colors.deepOrangeAccent
                                               ]
                                           ),
                                           borderRadius: BorderRadius.circular(15),

                                         ),
                                         child: Container(
                                           width: 180,
                                           height: 60,
                                           child: ElevatedButton(
                                             child: Row(
                                               mainAxisAlignment: MainAxisAlignment.center,
                                               children: [

                                                 SvgPicture.asset("assets/images/list1.svg", color: Colors.white, height: 25, width: 25,),
                                                 SizedBox(
                                                   width: 10,
                                                 ),
                                                 Text("Birthday", style: TextStyle(color: Colors.white, fontSize: 18),)
                                               ],
                                             ),
                                             style: ButtonStyle(
                                               backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                             ),
                                           ),
                                         ),
                                       ),
                                       SizedBox(
                                         width: 15,
                                       ),
                                       DecoratedBox(
                                         decoration: BoxDecoration(
                                           gradient: LinearGradient(
                                               colors: [
                                                 Colors.deepPurple,
                                                 Colors.deepPurpleAccent
                                               ]
                                           ),
                                           borderRadius: BorderRadius.circular(15),

                                         ),
                                         child: Container(
                                           width: 180,
                                           height: 60,
                                           child: ElevatedButton(
                                             child: Row(
                                               mainAxisAlignment: MainAxisAlignment.center,
                                               children: [

                                                 SvgPicture.asset("assets/images/list1.svg", color: Colors.white, height: 25, width: 25,),
                                                 SizedBox(
                                                   width: 10,
                                                 ),
                                                 Text("Party", style: TextStyle(color: Colors.white, fontSize: 18),)
                                               ],
                                             ),
                                             style: ButtonStyle(
                                               backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                             ),
                                           ),
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                             ),
                             Positioned(
                               top: 375,
                               child: AnimatedOpacity(
                                 duration: Duration(milliseconds: 500),
                                 opacity: visible ? 0.0 : 1.0,
                                 child: Container(
                                   width: MediaQuery.of(context).size.width,
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       DecoratedBox(
                                         decoration: BoxDecoration(
                                           gradient: LinearGradient(
                                               colors: [
                                                 Colors.lightBlue,
                                                 Colors.lightBlueAccent
                                               ]
                                           ),
                                           borderRadius: BorderRadius.circular(15),

                                         ),
                                         child: Container(
                                           width: 180,
                                           height: 60,
                                           child: ElevatedButton(
                                             child: Row(
                                               mainAxisAlignment: MainAxisAlignment.center,
                                               children: [

                                                 SvgPicture.asset("assets/images/list1.svg", color: Colors.white, height: 25, width: 25,),
                                                 SizedBox(
                                                   width: 10,
                                                 ),
                                                 Text("Relax", style: TextStyle(color: Colors.white, fontSize: 18),)
                                               ],
                                             ),
                                             style: ButtonStyle(
                                               backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                             ),
                                           ),
                                         ),
                                       ),
                                       SizedBox(
                                         width: 15,
                                       ),
                                       DecoratedBox(
                                         decoration: BoxDecoration(
                                           gradient: LinearGradient(
                                               colors: [
                                                 Colors.lightGreen,
                                                 Colors.lightGreenAccent
                                               ]
                                           ),
                                           borderRadius: BorderRadius.circular(15),

                                         ),
                                         child: Container(
                                           width: 180,
                                           height: 60,
                                           child: ElevatedButton(
                                             child: Row(
                                               mainAxisAlignment: MainAxisAlignment.center,
                                               children: [

                                                 SvgPicture.asset("assets/images/list1.svg", color: Colors.white, height: 25, width: 25,),
                                                 SizedBox(
                                                   width: 10,
                                                 ),
                                                 Text("Fun", style: TextStyle(color: Colors.white, fontSize: 18),)
                                               ],
                                             ),
                                             style: ButtonStyle(
                                               backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                                             ),
                                           ),
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                   AnimatedPositioned(
                     duration: Duration(milliseconds: 1000),
                     top: dashboard ? 50 : 175,
                     left: 30,
                     child: AnimatedOpacity(
                       duration: Duration(milliseconds: 500),
                       opacity: dashboard ? 0.0 : 1.0,
                       child: Container(
                         height: 50,
                         width: MediaQuery.of(context).size.width,
                         child: ListView(
                           scrollDirection: Axis.horizontal,
                           children: <Widget>[
                             ElevatedButton(
                               child: Row(
                                 children: [
                                   SvgPicture.asset("assets/images/list1.svg",),
                                   SizedBox(
                                     width: 10,
                                   ),
                                   Text("Main Light", style: TextStyle(color: Color(0xff1556bf)),)
                                 ],
                               ),
                               style: ButtonStyle(
                                 backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                 shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                                   borderRadius: BorderRadius.all(Radius.circular(15))
                                 ))
                               ),
                             ),
                             SizedBox(width: 10,),
                             ElevatedButton(
                               child: Row(
                                 children: [
                                   SvgPicture.asset("assets/images/list1.svg", color: Colors.white,),
                                   SizedBox(
                                     width: 10,
                                   ),
                                   Text("Desk Lights", style: TextStyle(color: Colors.white),)
                                 ],
                               ),
                               style: ButtonStyle(
                                   backgroundColor: MaterialStateProperty.all<Color>(Color(0xff0a3273)),
                                   shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                                       borderRadius: BorderRadius.all(Radius.circular(15))
                                   ))
                               ),
                             ),
                             SizedBox(width: 10,),
                             ElevatedButton(
                               child: Row(
                                 children: [
                                   SvgPicture.asset("assets/images/list3.svg",),
                                   SizedBox(
                                     width: 10,
                                   ),
                                   Text("Bed Light", style: TextStyle(color: Color(0xff1556bf)),)
                                 ],
                               ),
                               style: ButtonStyle(
                                   backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                   shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                                       borderRadius: BorderRadius.all(Radius.circular(15))
                                   ))
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                   ),
                   Positioned(
                     top: 232,
                     left: 330,
                     child: AnimatedOpacity(
                       duration: Duration(milliseconds: 500),
                       opacity: visible ? 0.0 : 1.0,
                       child: Container(
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           boxShadow: [
                             BoxShadow(
                               color: Colors.grey.withOpacity(0.5),
                               spreadRadius: 5,
                               blurRadius: 5,
                               offset: Offset(0, 3), // changes position of shadow
                             ),
                           ],
                         ),
                         child: CircleAvatar(
                           backgroundColor: Colors.white,
                           child: SvgPicture.asset("assets/images/power.svg", height: 20, width: 20,),
                         ),
                       ),
                     ),
                   ),
                   Positioned(
                     bottom: 0.1,
                     child: Container(
                       decoration: BoxDecoration(
                         color: Colors.white,
                         boxShadow: [
                           BoxShadow(
                             color: Colors.grey.withOpacity(0.5),
                             spreadRadius: 5,
                             blurRadius: 7,
                             offset: Offset(0, 3), // changes position of shadow
                           ),
                         ],
                       ),
                       padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                       height: 80,
                       width: MediaQuery.of(context).size.width,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           GestureDetector(
                             onTap: (){},
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                               children: <Widget>[
                                 SvgPicture.asset("assets/images/Icon1.svg", height: 30, width: 30,),
                               ],
                             ),
                           ),
                           GestureDetector(
                             onTap: (){},
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                               children: <Widget>[
                                 SvgPicture.asset("assets/images/Icon2.svg", height: 30, width: 30,),
                               ],
                             ),
                           ),
                           GestureDetector(
                             onTap: (){},
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                               children: <Widget>[
                                 SvgPicture.asset("assets/images/Icon3.svg", height: 30, width: 30,),
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ],
              ),
            ),
          ],
        ),
      )
    );
  }
}