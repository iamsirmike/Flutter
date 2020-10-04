import 'package:flutter/material.dart';
import 'package:psycup/screens/contact.dart';
import 'package:psycup/screens/members.dart';
import 'package:psycup/screens/services.dart';
import '../screens/homepage.dart';
import 'package:carousel_pro/carousel_pro.dart';


class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
              //The drawer
              drawer: Drawer(
                child: ListView(
                  children: [
                    Container(
                      child: Image.asset('assets/menu.png'),
                    ),
                    SizedBox(height:50.0),
                    ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.deepPurple,
                        ),
                      title: Text(
                      'Home',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>Home()));
                    }
                                                           
                    ),
                    SizedBox(height:20.0),
                    ListTile(
                      leading: Icon(
                        Icons.work,
                        color: Colors.deepPurple,
                        ),
                      title: Text(
                      'Services',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>Services()));
                    }
                                                           
                    ),
                    SizedBox(height:20.0),
                    ListTile(
                      leading: Icon(
                        Icons.people,
                        color: Colors.deepPurple,
                        ),
                      title: Text(
                      'Members',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>Members()));
                    }
                                                           
                    ),
                    SizedBox(height:20.0),
                    ListTile(
                      leading: Icon(
                        Icons.call,
                        color: Colors.deepPurple,
                        ),
                      title: Text(
                      'Contact',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>Contact()));
                    }
                                                           
                    ),
                  
                  ],
                ),
              ),
      
    );
  }
}

class HomeSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height:200.0,
      child: Carousel(
        images: [
          AssetImage('assets/images/homebanner1.jpg'),
          AssetImage('assets/images/homebanner2.jpg'),
          AssetImage('assets/images/homebanner3.jpg'),
        ],
        dotColor: Colors.black,
        dotIncreasedColor: Colors.black.withOpacity(0.2),
        dotSize: 5.0,
        dotSpacing: 15.0,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.transparent,
        overlayShadow: false,
        borderRadius: true,
        ),
    );
    
  }
}