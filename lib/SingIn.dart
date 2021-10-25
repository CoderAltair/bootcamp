import 'package:fastfood/Home/home_UI.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
class signIn extends StatefulWidget {
  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              top: 79.0,
              left: 30.0,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios), 
                onPressed: ()=>Navigator.pop(context)),
            ),

          Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 30.0,top: 260.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sign In',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 24.0,),),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Column(
                        children: [
                          GestureDetector(
                onTap: ()=>print('Usernaem'),
                  child: Container(
                      height: 50.0,
                      width: 354,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xFFECF0F1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 17.0),
                        child: Text('Username',
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          ),),
                      ),
                  ),
              ),
              SizedBox(height: 20.0,),
              GestureDetector(
                onTap: ()=>print('password'),
                  child: Container(
                      height: 50.0,
                      width: 354,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xFFECF0F1),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 17.0),
                        child: Text('Password',
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          ),),
                      ),
                  ),
              ), 
                        ],
                      ),
                    ),
              GestureDetector(
                onTap: ()=>Navigator.push(context,
                MaterialPageRoute(builder:(context)=>HomePage())),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Container(
                      height: 50.0,
                      width: 354,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xFfD35400),
                      ),
                      child: Center(
                        child: Text('Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                          ),),
                      ),
                    ),
                  ),
              ),
              Align(  
                alignment: Alignment.bottomRight,
                child:Text('Forgot Password?',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF34495E)
                ),),)
                ],
              ),
            ),
          ),
          Container(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Row(
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
                     SizedBox(height: 12.0,),
                   Row(
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
                   ],
                 )
               ),
          ]),
      ),
    );
  }
}


