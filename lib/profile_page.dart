import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  State<ProfilePage> createState() => _SignupPageState();
}

class _SignupPageState extends State<ProfilePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 68,),
          Row(
            children: [
              Image.asset('assets/icon.png', width: 60, height: 60,),
              SizedBox(width: 14,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello Ken',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto'
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Current balance: ',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            color: Color.fromARGB(255,58, 58, 58)
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'N10,712:00', style: TextStyle(color: Color.fromARGB(255, 5, 96, 250))),]
                    ),

                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 14,),
          Container(
            decoration: new BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.5),
                  blurRadius: 10.0, // soften the shadow
                  spreadRadius: 2.0, //extend the shadow
                  offset: Offset(
                    3.0, // Move to right 10  horizontally
                    3.0, // Move to bottom 10 Vertically
                  ),
                )
              ],
            ),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(0)),
              ),
              child: ListTile(
                leading: ImageIcon(AssetImage("assets/edit_profile.png"), size: 19),
                title: Text('Edit Profile',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Roboto',
                  ),),
                subtitle:
                Text('Name, phone no, address, email ...',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      color: Color.fromARGB(255, 167, 167, 167)
                  ),),
                trailing: ImageIcon(AssetImage('assets/vector.png')),
              ),
            ),
          ),
          SizedBox(height: 14,),
        Container(
          decoration: new BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.5),
                blurRadius: 10.0, // soften the shadow
                spreadRadius: 2.0, //extend the shadow
                offset: Offset(
                  3.0, // Move to right 10  horizontally
                  3.0, // Move to bottom 10 Vertically
                ),
              )
            ],
          ),
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(0)),
            ),
            child: ListTile(
              leading: ImageIcon(AssetImage("assets/statements.png"), size: 19),
              title: Text('Statements & Reports',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                ),),
              subtitle:
              Text('Download transaction details, orders, deliveries',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    color: Color.fromARGB(255, 167, 167, 167)
                ),),
              trailing: ImageIcon(AssetImage('assets/vector.png')),
            ),
          )),
          SizedBox(height: 14,),
        Container(
          decoration: new BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.5),
                blurRadius: 10.0, // soften the shadow
                spreadRadius: 2.0, //extend the shadow
                offset: Offset(
                  3.0, // Move to right 10  horizontally
                  3.0, // Move to bottom 10 Vertically
                ),
              )
            ],
          ),
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(0)),
            ),
            child: ListTile(
              leading: ImageIcon(AssetImage("assets/settings.png"), size: 19),
              title: Text('Notification Settings',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                ),),
              subtitle:
              Text('mute, unmute, set location & tracking setting',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    color: Color.fromARGB(255, 167, 167, 167)
                ),),
              trailing: ImageIcon(AssetImage('assets/vector.png')),
            ),
          )),
          SizedBox(height: 14,),
        Container(
          decoration: new BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.5),
                blurRadius: 10.0, // soften the shadow
                spreadRadius: 2.0, //extend the shadow
                offset: Offset(
                  3.0, // Move to right 10  horizontally
                  3.0, // Move to bottom 10 Vertically
                ),
              )
            ],
          ),
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(0)),
            ),
            child: ListTile(
              leading: ImageIcon(AssetImage("assets/card.png"), size: 19),
              title: Text('Card & Bank account settings',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                ),),
              subtitle:
              Text('change cards, delete card details',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    color: Color.fromARGB(255, 167, 167, 167)
                ),),
              trailing: ImageIcon(AssetImage('assets/vector.png')),
            ),
          )),
          SizedBox(height: 14,),
        Container(
          decoration: new BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.5),
                blurRadius: 10.0, // soften the shadow
                spreadRadius: 2.0, //extend the shadow
                offset: Offset(
                  3.0, // Move to right 10  horizontally
                  3.0, // Move to bottom 10 Vertically
                ),
              )
            ],
          ),
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(0)),
            ),
            child: ListTile(
              leading: ImageIcon(AssetImage("assets/about.png"), size: 19),
              title: Text('About us',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                ),),
              subtitle:
              Text('know more about us, terms and conditions',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    color: Color.fromARGB(255, 167, 167, 167)
                ),),
              trailing: ImageIcon(AssetImage('assets/vector.png')),
            ),
          )),
          SizedBox(height: 14,),
        Container(
          decoration: new BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.5),
                blurRadius: 10.0, // soften the shadow
                spreadRadius: 2.0, //extend the shadow
                offset: Offset(
                  3.0, // Move to right 10  horizontally
                  3.0, // Move to bottom 10 Vertically
                ),
              )
            ],
          ),
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(0)),
            ),
            child: ListTile(
              leading: ImageIcon(AssetImage("assets/log_out.png"), size: 19, color: Colors.red,),
              title: Text('Log Out',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                ),),
              trailing: ImageIcon(AssetImage('assets/vector.png')),
            ),
          )),
          SizedBox(height: 14,),
        ],
      ),)
    );
  }
}
