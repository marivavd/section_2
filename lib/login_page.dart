import 'package:flutter/material.dart';
import 'package:section_2/home_page.dart';
import 'package:section_2/repository/supabase.dart';
import 'package:section_2/show_error.dart';
import 'package:section_2/signup_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? flag = false;
  String email = "";
  String password = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 68,),
            Text(
              'Welcome back',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Roboto',
              ),
            ),
            SizedBox(height: 8,),
            Text(
              'Fill in your email and password to continue',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  color: Color.fromARGB(255, 167, 167, 167)
              ),
            ),
            SizedBox(height: 33,),
            Text('Email Address',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  color: Color.fromARGB(255, 167, 167, 167)
              ),),
            SizedBox(height: 8,),
            SizedBox(
              height: 44,
              child: TextField(
                  style: TextStyle(color: Colors.grey, decorationThickness: 3),
                  onChanged: (text)
                  {email = text;},
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(4),
                    hintStyle: TextStyle(fontSize: 17),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                          width: 4,
                          style: BorderStyle.none,
                          color: Color.fromARGB(255, 167, 167, 167)
                      ),
                    ),
                  )
              ),
            ),
            SizedBox(height: 24),
            Text('Password',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  color: Color.fromARGB(255, 167, 167, 167)
              ),),
            SizedBox(height: 8,),
            SizedBox(
              height: 44,
              child: TextField(
                  style: TextStyle(color: Colors.grey, decorationThickness: 3),
                  onChanged: (text)
                  {password = text;},
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(4),
                    hintStyle: TextStyle(fontSize: 17),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                          width: 4,
                          style: BorderStyle.none,
                          color: Color.fromARGB(255, 167, 167, 167)
                      ),
                    ),
                  )
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(child:
                SizedBox(
                  child: Row(
                    children: [
                      Checkbox(
                        value: flag,
                        onChanged: (bool? value){
                          setState(() {
                            flag = value;
                          });
                        },
                        side: BorderSide(color: Color.fromARGB(255, 167, 167, 167)),
                      ),
                      Text('Remember password',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            color: Color.fromARGB(255, 167, 167, 167)
                        ),),
                    ],
                  ),
                )),
                SizedBox(
                    child: Text('Forgot Password?',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          color: Color.fromARGB(255, 5, 96, 250)
                      ),),
                ),
              ],
            ),
            Expanded(
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child:SizedBox(
                      width: 353,
                      height: 40,
                      child:OutlinedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 5, 96, 250),),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  )
                              )
                          ),
                          onPressed: () async{
                            signIn(email: email,
                                password: password,
                                onResponse: (AuthResponse response){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(full_name: response.user?.userMetadata?['full_name'])));},
                                onError: (String e) {showError(context, e);});
                          },
                          child: Text("Login", style: TextStyle(fontSize: 16, color: Colors.white),)),))),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not have an account?',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      color: Color.fromARGB(255, 167, 167, 167)
                  ),),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupPage()));
                  },
                  child: Text('Sign up',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        color: Color.fromARGB(255, 5, 96, 250)
                    ),),
                ),
              ],
            ),
            SizedBox(height: 24,)

          ],
        ),
      ),
    );
  }
}
