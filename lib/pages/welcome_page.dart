import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../authenth/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {

    List images = [
      "google0.png",
      "apple0.png",
    ];

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: w,
              height: h*0.5,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "lib/images/coffee11.png"
                      )
                  )
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: w,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome!",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                  Text(
                    "I Love Coffee!",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.brown[300],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.brown, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: 10,),
            RichText(
                text: TextSpan(
                    text: "Doesn\'t have an account?",
                    style: TextStyle(
                        color: Colors.brown[300],
                        fontSize: 20
                    ),
                    children: [
                      TextSpan(
                        text: " Create",
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ]
                )
            )
          ],
        ),
      ),

    );
  }
}
