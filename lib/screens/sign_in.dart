import 'package:flutter/material.dart';
import 'package:team_collaboration_ui/screens/home_screen.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:Color.fromRGBO(25, 23, 31,1) ,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back,color: Colors.white,),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_){
                        return HomeScreen();
                      }));
                    },
                  ),
                ],
              ),
              SizedBox(height: size.height*0.03,),
              Container(
                child: Text("Let's sign you in.",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),),
              ),
              SizedBox(height: size.height*0.02,),
              Container(
                margin: EdgeInsets.only(left: size.width*0.14),
                child: Row(
                  children: [
                   Text('Welcome Back',textAlign: TextAlign.start,style: TextStyle(color:Colors.white,fontWeight: FontWeight.w300,fontSize: 30),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height*0.01,),
              Container(
                margin: EdgeInsets.only(left: size.width*0.14),
                child: Row(
                  children: [
                    Text("You've been missed!",textAlign: TextAlign.start,style: TextStyle(color:Colors.white,fontWeight: FontWeight.w300,fontSize: 30),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height*0.08,),
              Container(
                padding: EdgeInsets.all(10),
                width: size.width*0.8,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(25, 23, 31, 0.9),
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.5),
                    width: 2
                  ),
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Phone, email or username',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.5))
                  ),
                ),
              ),
              SizedBox(height: size.height*0.02,),
              Container(
                padding: EdgeInsets.all(10),
                width: size.width*0.8,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(25, 23, 31, 0.9),
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                      color: Colors.white.withOpacity(0.5),
                      width: 2
                  ),
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                    suffixIcon: Icon(Icons.visibility_sharp,color: Colors.white.withOpacity(0.5),)
                  ),
                ),
              ),
              SizedBox(
                height: size.height*0.3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Don't have an account?",style:TextStyle(color: Colors.white.withOpacity(0.5)),),
                 Text(" Register ",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold ))

               ],
              ),
              SizedBox(
                height: size.height*0.02,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: size.width*0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Text('Sign Up',textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
