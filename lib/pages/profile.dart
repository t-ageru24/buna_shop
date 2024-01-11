// import 'package:flutter/material.dart';
// import '../pages/home_page.dart';
// import '../authenth/login_page.dart';
//
// class SignUpPage extends StatelessWidget {
//   const SignUpPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//
//     List images = [
//       "google0.png",
//       "apple0.png",
//     ];
//
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               width: w,
//               height: h*0.3,
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       image: AssetImage(
//                           "lib/images/profile.png"
//                       )
//                   )
//               ),
//             ),
//             Container(
//               margin: const EdgeInsets.only(left: 20, right: 20),
//               width: w,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(height: 30,),
//                   Container(
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(30),
//                         boxShadow: [
//                           BoxShadow(
//                               blurRadius: 10,
//                               spreadRadius: 7,
//                               offset: Offset(1,1),
//                               color: Colors.brown.withOpacity(0.1)
//                           )
//                         ]
//                     ),
//                     child: TextField(
//                       decoration: InputDecoration(
//                           hintText: "Your Email/Phone",
//                           prefixIcon: Icon(Icons.email, color: Colors.brown,),
//                           focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(30),
//                               borderSide: BorderSide(
//                                   color: Colors.white,
//                                   width: 1.0
//                               )
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(30),
//                               borderSide: BorderSide(
//                                   color: Colors.white,
//                                   width: 1.0
//                               )
//                           ),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                           )
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 30,),
//                   Container(
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(30),
//                         boxShadow: [
//                           BoxShadow(
//                               blurRadius: 10,
//                               spreadRadius: 7,
//                               offset: Offset(1,1),
//                               color: Colors.brown.withOpacity(0.1)
//                           )
//                         ]
//                     ),
//                     child: TextField(
//                       decoration: InputDecoration(
//                           hintText: "Create new Password!",
//                           prefixIcon: Icon(Icons.lock, color: Colors.brown,),
//                           focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(30),
//                               borderSide: BorderSide(
//                                   color: Colors.white,
//                                   width: 1.0
//                               )
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(30),
//                               borderSide: BorderSide(
//                                   color: Colors.white,
//                                   width: 1.0
//                               )
//                           ),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                           )
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 30,),
//                   Container(
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(30),
//                         boxShadow: [
//                           BoxShadow(
//                               blurRadius: 10,
//                               spreadRadius: 7,
//                               offset: Offset(1,1),
//                               color: Colors.brown.withOpacity(0.1)
//                           )
//                         ]
//                     ),
//                     child: TextField(
//                       decoration: InputDecoration(
//                           hintText: "Re-Enter your Password!",
//                           prefixIcon: Icon(Icons.password_outlined, color: Colors.brown,),
//                           focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(30),
//                               borderSide: BorderSide(
//                                   color: Colors.white,
//                                   width: 1.0
//                               )
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(30),
//                               borderSide: BorderSide(
//                                   color: Colors.white,
//                                   width: 1.0
//                               )
//                           ),
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(30),
//                           )
//                       ),
//                     ),
//                   ),
//
//                   // SizedBox(height: 30,),
//                   // Row(
//                   //   children: [
//                   //     Expanded(child: Container(),),
//                   //     Text(
//                   //       "Forget your Password?",
//                   //       style: TextStyle(
//                   //         fontSize: 20,
//                   //         color: Colors.brown[300],
//                   //       ),
//                   //     )
//                   //   ],
//                   // ),
//                 ],
//               ),
//             ),
//
//             SizedBox(height: 40,),
//             Container(
//               height: 50,
//               width: 250,
//               decoration: BoxDecoration(
//                   color: Colors.brown, borderRadius: BorderRadius.circular(20)),
//               child: TextButton(
//                 onPressed: () {
//                   Navigator.push(
//                       context, MaterialPageRoute(builder: (_) => HomePage()));
//                 },
//                 child: Text(
//                   'Sign Up',
//                   style: TextStyle(color: Colors.white, fontSize: 25),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20,),
//             RichText(
//                 text: TextSpan(
//                   text: "OR sign up with",
//                   style: TextStyle(
//                       color: Colors.brown[300],
//                       fontSize: 20
//                   ),
//
//                 )
//             ),
//             SizedBox(height: 10,),
//             Wrap(
//
//               children: List<Widget>.generate(
//                   2,
//                       (index){
//                     return Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: CircleAvatar(
//                         radius: 30,
//                         backgroundColor: Colors.brown,
//                         child: CircleAvatar(
//                           radius: 28,
//                           backgroundImage: AssetImage(
//                             "lib/images/"+images[index],
//
//                           ),
//                         ),
//                       ),
//                     );
//                   }
//               ),
//             )
//           ],
//         ),
//       ),
//
//     );
//   }
// }
