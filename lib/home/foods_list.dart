import 'package:flutter/material.dart';
class FoodList extends StatefulWidget {
  final String name;
  final String images;
  final String location;
  final int time;
  final int evo;
  const FoodList({Key key, this.name, this.images, this.location, this.time, this.evo}) 
  : super(key: key);

  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return Container(
         margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
         width: MediaQuery.of(context).size.width,
         height: 180,
         decoration: BoxDecoration(
          color: Colors.black,
           borderRadius: BorderRadius.circular(15),
           boxShadow: [
             BoxShadow(
               color: Colors.black.withOpacity(0.6),
               offset: Offset(
                 0.0,
                 10.0,
               ),
               blurRadius: 10.0,
               spreadRadius: -6.0,
             ),
           ],
           image: DecorationImage(
             colorFilter: ColorFilter.mode(
               Colors.black.withOpacity(0.35),
               BlendMode.multiply,
             ),
             image: AssetImage(widget.images),
             fit: BoxFit.cover,
           ),
         ),
         child: Stack(
           children: [
             Align(
               child: Padding(
                 padding: EdgeInsets.symmetric(horizontal: 5.0),
                 child: Column(
                   children: [
                     Text(
                      widget.name,
                       style: TextStyle(
                         fontSize: 19,
                      color: Colors.white54
                       ),
                       overflow: TextOverflow.ellipsis,
                       maxLines: 2,
                       
                       textAlign: TextAlign.center,
                     ),
                    SizedBox(height: 10.0,),
                     Text(
                     widget.location,
                       style: TextStyle(
                         fontSize: 17,
                         color: Colors.white54
                       ),
                       overflow: TextOverflow.ellipsis,
                       maxLines: 2,
                       textAlign: TextAlign.center,
                     ),
                   ],
                 ),
               ),
               alignment: Alignment.center,
            ),
             Align(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Container(
                     padding: EdgeInsets.all(5),
                     margin: EdgeInsets.all(10),
                     decoration: BoxDecoration(
                       color: Colors.black.withOpacity(0.4),
                       borderRadius: BorderRadius.circular(15),
                     ),
                     child: Row(
                       children: [
                         Icon(
                           Icons.star,
                           color: Colors.yellow,
                           size: 18,
                         ),
                         SizedBox(width: 7),
                         Text('${widget.evo}',style: TextStyle(color: Colors.white54),),
                       ],
                     ),
                   ),
                   Container(
                     padding: EdgeInsets.all(5),
                     margin: EdgeInsets.all(10),
                     decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                       borderRadius: BorderRadius.circular(15),
                     ),
                     child: Row(
                       children: [
                         Icon(
                           Icons.schedule,
                           color: Colors.yellow,
                           size: 18,
                         ),
                         SizedBox(width: 7),
                         Text('${widget.time}',style: TextStyle(color: Colors.white54),),
                       ],
                     ),
                   )
                 ],
               ),
               alignment: Alignment.bottomLeft,
             ),
           ],
         ),
           );
  }
}