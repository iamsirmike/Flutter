import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psycup/screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   void initState() {

//     super.initState();
//     Future.delayed(Duration(
//       seconds: 3,
//     ),(){
//       Navigator.push(context, MaterialPageRoute(builder: (context)=>Home(),),);

//     }

//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Stack(
//         children: [
//           Center(
//             child: Container(
//               height: 800.0,
//               child:  Image.asset('assets/realsplash1.png'),
//               color: Colors.white,
//             ),
//           ),

//         ],
//       )
//       );

//   }
// }
