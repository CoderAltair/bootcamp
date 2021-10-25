import 'package:fastfood/SignUp.dart';
import 'package:fastfood/SingIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class second_list extends StatefulWidget {
  @override
  _second_listState createState() => _second_listState();
}
class _second_listState extends State<second_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Column(children: [
              Padding(
            padding: const EdgeInsets.only(top: 57,left: 57.0,right: 57.0,bottom: 61.0),
            child: Container(
              height: 300.0,
              width: 300.0,
              child: SvgPicture.asset('images/second1.svg'),
            ),
          ),
          GestureDetector(
            onTap: ()=>Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>signIn())),
            child: Container(
              height: 50.0,
              width: 354,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Color(0xFFD35400),
              ),
              child: Center(
                child: Text('Sign In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  ),),
              ),
            ),
          ),
          SizedBox(
            height: 23.0,
          ),
          GestureDetector(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder:(context)=>SignUp() )),
              child: Container(
                height: 50.0,
                width: 354,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Color(0xFFECF0F1),
                ),
                child: Center(
                  child: Text('Sign Up',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    ),),
                ),
              ),
          ),
            ],),
          ),
          Container(
            child: Column(children: [
               Container(
            child: Row(
              children: [
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Container(
                  height: 2.0,
                  width: 278,
                  color: Color(0xFFECF0F1),
                ),
              ),
              Text('Or connect with'),
            ],),
          ),
          SizedBox(
            height: 20.0,
          ),
              Container(
                alignment: Alignment.bottomCenter,
               child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Container(
                    width: 207.0,
                    height: 115.0,
                    child: Image.asset('images/svg.jpg',fit: BoxFit.fill,)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    SvgPicture.asset('images/second4.svg'),
                    SizedBox(
                      width: 20.0,
                    ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: SvgPicture.asset('images/second5.svg'),
                  ),
                  ],)
                ],),
             ),
            ],),
          )
        ],  
      ),
    ),
    );
  }
}