import 'package:fastfood/second.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Login_page extends StatefulWidget {
  @override
  _Login_pageState createState() => _Login_pageState();
}
class _Login_pageState extends State<Login_page> {
  int _numPage=4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage=0;
  List<Widget> buildPageIndicator(){
    List<Widget> list=[];
    for(int i = 0; i<_numPage;i ++){
      list.add(i==_currentPage ? _indicator(true):_indicator(false));
    }
    return list;
  }
  _indicator(bool isActive){
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.only(left: 5.0),
      width: 10.0,
      height: 10.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
          color: isActive ? Colors.white :Colors.white30
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFD35400),
        ),
        child:Column(
          children: [
          Container(
              height:MediaQuery.of(context).size.height*0.9,
              child: PageView(
                controller:_pageController,
                onPageChanged: (int page){
                  setState(() {
                    _currentPage=page;
                  });
                },
                children: <Widget>[
                  Center(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(  
                              width: 200,
                              height: 200,
                              child:SvgPicture.asset('images/4.svg'),
                          ),
                          Container(
                            child: Column(
                              children: [                               
                                 Text('Delicious Food',style: TextStyle(
                              color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),),  
                          SizedBox(height:15.0 ,),                           
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 69.0),
                            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 14.0,
                            ),),
                          )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                   Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              width: 200,
                              height: 200,
                              child:SvgPicture.asset('images/1.svg'),
                          ),
                          Container(
                            child: Column(
                              children: [                               
                                   Text('Fast Shipping',style: TextStyle(
                              color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),),
                              SizedBox(
                              height:15.0 ,
                            ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 69),
                            child: Text('Lorem ipsum dolor sit amet,consectetu adipiscing elit.Interdum rhoncus nulla' ,
                             textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 14.0,
                              ),),
                          )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                 Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              width: 200,
                              height: 200,
                              child:SvgPicture.asset('images/2.svg'),
                          ),
                          Container(
                            child: Column(
                              children: [                              
                              Text('Certificate Food',style: TextStyle(
                              color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                                ),
                                SizedBox(
                              height:15.0 ,
                            ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 69.0),
                            child: Text('Lorem ipsum dolor sit amet,consectetur\adipiscing elit.Morbi ultricies mauris a id',
                             textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 14.0,
                              ),),
                          )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  Container(
                      child: Stack(
                        children:[ 
                            Positioned(
                              top: 70.0,
                              right:0.0,
                              child: GestureDetector(
                                                  onTap: ()=>Navigator.push(
                                                  context,
                                                 MaterialPageRoute(builder: (contex){
                                                   return second_list();
                                                 })), child:Container(
                                                   width: 100.0,height: 100.0,
                                                 child: Text('Skip',style: TextStyle(
                                                   color: Colors.white54,fontWeight: FontWeight.bold,fontSize: 20.0
                                                 ),),)),
                            ),
                          Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                width: 200,
                                height: 200,
                                child:SvgPicture.asset('images/3.svg'),
                            ),                         
                               Text('Payment Online',style: TextStyle(
                                  color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24.0,
                              ),),   
                              SizedBox(
                                height:15.0 ,
                              ),                      
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 69),
                              child: Text('Lorem ipsum dolor sit amet,consectetur\adipiscing elit.Dui ultricies sit massa',
                               textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.0,
                                ),),
                            )
                          ],
                        ),   
                                     
                        ]
                      ),
                    )           
                ],
              ),
            ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: buildPageIndicator(),
              ),
              SizedBox(height: 5.0,),
               GestureDetector(
                                   onTap: ()=>Navigator.push(
                                   context,
                                  MaterialPageRoute(builder: (contex){
                                    return second_list();
                                  })), child:Container(
                                    width:MediaQuery.of(context).size.width*1,
                                    color: Colors.white,
                                    height: MediaQuery.of(context).size.height*0.08,
                                  child: Center(
                                    child: Text('Skip',style: TextStyle(
                                      color: Color(0xFFD35400),fontWeight: FontWeight.bold,fontSize: 20.0
                                    ),),
                                  ),)),
          ],
        ),
        ],),
      ),
    );
  }
}

