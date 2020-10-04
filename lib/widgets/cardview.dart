import 'package:flutter/material.dart';





class CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
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
                      );
    
  }
}