import 'package:flutter/material.dart';
class Foods extends StatefulWidget {
final String food_name;
final String food_image;
Foods({this.food_name,this.food_image,});
  @override
  _FoodsState createState() => _FoodsState();
}
class _FoodsState extends State<Foods> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()=>Navigator.push(context, MaterialPageRoute(builder:(_){}
      )),
      child: Padding(
        padding: EdgeInsets.only(right: 15.0,top: 15.0),
        child: Container(
          width: 130.0,
          height:130.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.bottomRight,
              image: AssetImage('${widget.food_image}'),
             ),
            color: Color(0xFF3999DA),
            borderRadius: BorderRadius.circular(20.0)),
          child:Padding(
           padding: EdgeInsets.only(left: 15.0,top: 10.0),
           child:    Text('${widget.food_name}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 14.0),),  
          ),
        ),
      ),
    );
  }
}