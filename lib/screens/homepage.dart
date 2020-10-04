import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:psycup/screens/contact.dart';
import 'package:psycup/screens/members.dart';
import 'package:psycup/screens/services.dart';




void main(){
  runApp(Home());

}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    //Slider class
    final _slider = SizedBox(
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.deepPurple,
                title: Text(
                  'Home',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                  ),
                ),
              ),
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
            body: SingleChildScrollView(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                      height: 150.0,
                      width: 500.0,
                      child:_slider,
                    ),
                    SizedBox(height:30.0),
                    // Container(
                    //   padding: EdgeInsets.only(bottom:20.0),
                    //  child: Text(
                    //     'Professional Services',
                    //     style: TextStyle(
                    //       fontFamily: 'Montserrat',
                    //       fontSize: 20.0,
                    //       fontWeight: FontWeight.w500,
                    //     ),
                    //   ),
                    // ),
                    ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 9,
                    itemBuilder: (context, index){
                      return Center(
                        child: Padding(
                          padding:EdgeInsets.all(8.0) ,
                          child: Stack(
                            children: [
                              Container(
                                height: 130.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  gradient: LinearGradient(
                                    colors: [Colors.deepPurple[200],Colors.grey[200]],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  
                                    ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(0, 6),
                                      blurRadius: 12
                                    )
                                  ]  
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                           'Marriage Counselling',
                                            style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontSize: 20.0
                                            ),
                                            
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 80.0,
                                            child: Image.network(
                                             'https://www.flaticon.com/svg/static/icons/svg/1568/1568044.svg',
                                              height: 60,
                                              
                                              fit: BoxFit.cover,
                                              ),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ),
                            ]
                          )
                          ),
                          

                        );

                        }
                      )
                          ],                  
                        ),
                      
                    ]
                    ),
                  )
                  )
                );
                }   
                    
              }
