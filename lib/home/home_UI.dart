import 'package:fastfood/home/foods.dart';
import 'package:fastfood/home/foods_list.dart';
import 'package:fastfood/models/models.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
FoodsName obje;
HomePage({this.obje});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 int _selectedIndex = 0;
   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     bottomNavigationBar: BottomNavigationBar(
       backgroundColor: Colors.white,
       onTap: _onItemTapped,
       currentIndex: _selectedIndex,
       selectedItemColor: Color(0xFFD35400),
       selectedLabelStyle: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w400),
       items: const <BottomNavigationBarItem>[
          
         BottomNavigationBarItem(
           
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            backgroundColor: Colors.black54,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.black54,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'For ',
            backgroundColor: Colors.black54,
          ),
       ]
     ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(top: 79.0),
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: GestureDetector(
                      onTap: ()=>print('Usernaem'),
                        child: Container(
                            height: 50.0,
                            width: 354,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Color(0xFFECF0F1),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 17.0,bottom: 17.0,left: 20.0,right: 10.0),                            child: IconButton(
                                    color: Colors.black45,
                                    iconSize: 20.0,
                                    icon: Icon(Icons.search), 
                                    onPressed:()=>print("search")),
                                ),
                                Text('Search',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  ),),
                              ],
                            ),
                        ),
                    ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(top:13.0,left:30.0,),
                    child: Container(
                      child:Row(
                        children: [
                          Icon(Icons.location_pin,color:Colors.black,size: 20.0,),
                          Text('9 West 46 Th Street,NewYork City',style: TextStyle(color: Colors.black,fontSize: 12.0,fontWeight: FontWeight.w400),)
                        ],
                      ) ,
                      ),
                  ),
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                         child: Row(children: [
                           GestureDetector(
                             onTap: ()=>Navigator.push(context, MaterialPageRoute(builder:(_){;} )),
                             child: Padding(
                               padding: const EdgeInsets.only(left:30.0,top: 30.0,bottom: 20.0),
                               child: Column(
                                   children: [
                                     Container(
                                       decoration: BoxDecoration(
                                         image: DecorationImage(
                                           image: AssetImage('images/i1.png')
                                         ),
                                         color: Color(0xFFD35400),
                                         borderRadius: BorderRadius.circular(20.0)),
                                         height: 70.0,
                                         width: 70.0, ),
                                         SizedBox(
                                           height: 5.0,
                                         ),
                                         Text('Food',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14.0 ),)
                                   ],
                                 ),
                             ),
                           ),
          GestureDetector(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder:(_){;} )),
            child: Padding(
              padding: const EdgeInsets.only(top:30.0,bottom:20.0,left:40.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/i2.png')
                      ),
                      color:Color(0xFFD35400),
                      borderRadius: BorderRadius.circular(20.0)),
                      height: 70.0,
                      width: 70.0, ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('Free',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14.0 ),)
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder:(_){;} )),
            child: Padding(
              padding: const EdgeInsets.only(top:30.0,bottom:20.0,left:40.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/i1.png')
                      ),
                      color:Color(0xFFD35400),
                      borderRadius: BorderRadius.circular(20.0)),
                      height: 70.0,
                      width: 70.0, ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('Drink',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14.0 ),)
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder:(_){;} )),
            child: Padding(
              padding: const EdgeInsets.only(top:30.0,bottom:20.0,left:40.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/i4.png')
                      ),
                      color:Color(0xFFD35400),
                      borderRadius: BorderRadius.circular(20.0)),
                      height: 70.0,
                      width: 70.0, ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('Fruit',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14.0 ),)
                ],
              ),
            ),
          ),
                         ],),),
                    ),              
                     Padding(
                       padding: const EdgeInsets.only(left:30.0),
                       child: Text('Food Menu',style:TextStyle( color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.w700)),
                     ),
                    
                    Padding(
                      padding: EdgeInsets.only(left: 30.0 ),
                      child: Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            children: [
                          Row(
                            children:[
                              Foods(food_name:'Burgers',food_image: 'images/f4.png',),
                          Foods(food_name:'Pizza',food_image: 'images/f5.png',),
                          Foods(food_name:'BBQ',food_image: 'images/f2.png',),
                            ]
                          ),
                          
                          Row(
                            children: [
                              Foods(food_name:'Fruit',food_image: 'images/f4.png',),
                          Foods(food_name:'Sushi',food_image: 'images/f4.png',),
                          Foods(food_name:'Noodle',food_image: 'images/f5.png',)
                            ],
                          )
                            ],),
                        ),
                      ),
                    )  ,
                    Padding(
                       padding: const EdgeInsets.only(left:30.0,top: 15.0),
                       child: Text('Near Me',style:TextStyle( color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.w700)),
                     ),   
                     FoodList(
                       name: 'Pizza',
                       images: 'images/o1.jpg',
                       location: 'NewYork,11 Th Street',
                       evo: 12,
                       time: 15,
                     ),
                     FoodList(
                       name: 'Pizza',
                       images: 'images/o2.jpg',
                       location: 'NewYork,11 Th Street',
                       evo: 12,
                       time: 15,
                     ),
                     FoodList(
                       name: 'Pizza',
                       images: 'images/o3.jpg',
                       location: 'NewYork,11 Th Street',
                       evo: 12,
                       time: 15,
                     ),
                     FoodList(
                       name: 'Pizza',
                       images: 'images/o4.jpg',
                       location: 'NewYork,11 Th Street',
                       evo: 12,
                       time: 15,
                     ),            
                        ],
                      ) )),
      ));
  }
}