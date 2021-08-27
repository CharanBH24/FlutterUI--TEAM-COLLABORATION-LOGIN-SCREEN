import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_collaboration_ui/screens/sign_in.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 23, 31, 1),
      body: Container(
        margin: EdgeInsets.only(top: 32),
        width: double.infinity,
        height: size.height,
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/home_pic.png",
                    height: size.height * 0.45,
                  ),
                  Text(
                    "Enterprise team",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    "collaboration.",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Text(
                    'Bring together your files, your tools\n\nprojects and people. Including a new\n\nmobile and desktop application',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w200),
                  ),
                  SizedBox(height: size.height*0.1,),
                  Container(
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text("Register",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          padding: EdgeInsets.all(20),
                          width: size.width * 0.8 * 0.5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                topLeft: Radius.circular(15)),
                          ),
                          child: GestureDetector(
                            child: Text("Sign In",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_){
                                  return SignInPage();
                                }));
                            },
                          ),
                          padding: EdgeInsets.all(20),
                          width: size.width * 0.8 * 0.5,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
