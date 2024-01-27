import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool? flag = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          SizedBox(height: 68,),
          Text(
            'Create an account',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Roboto',
            ),
          ),
          SizedBox(height: 8,),
          Text(
            'Complete the sign up process to get started',
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'Roboto',
                color: Color.fromARGB(255, 167, 167, 167)
            ),
          ),
          SizedBox(height: 33,),
          Text('Full name',
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
                {},
                decoration: InputDecoration(
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
              Text('Phone number',
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
                    {},
                    decoration: InputDecoration(
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
                    {},
                    decoration: InputDecoration(
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
                    {},
                    decoration: InputDecoration(
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
              Text('Confirm password',
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
                    {},
                    decoration: InputDecoration(
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
                      side: BorderSide(color: Color.fromARGB(255, 5, 96, 250)),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'By ticking this box, you agree to our ',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          color: Color.fromARGB(255, 167, 167, 167)
                      ),
                          children: <TextSpan>[
                      TextSpan(
                      text: 'Terms and conditions\n and private policy', style: TextStyle(color: Color.fromARGB(255, 235, 188, 46))),]
                      ),

                    ),
                  ],
                ),))]),
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
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("Sign up", style: TextStyle(fontSize: 16, color: Colors.white),)),))),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        color: Color.fromARGB(255, 167, 167, 167)
                    ),),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Text('Sign in',
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


            ])),
    );
  }
}
