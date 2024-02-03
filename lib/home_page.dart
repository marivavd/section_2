import 'package:flutter/material.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget{
  final String full_name;


  HomePage({super.key, required this.full_name});

  @override
  State<HomePage> createState() => _HomePage_State();
}
class _HomePage_State extends State<HomePage> {
  int current_index = 0;


  @override


  Widget build(BuildContext context){

    return Scaffold(
      body: Center(child: [Scaffold(), Scaffold(), Scaffold(), ProfilePage(full_name: widget.full_name)][current_index]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: current_index,
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/home.png')), label: 'Home'),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/wallet.png')), label: 'Wallet'),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/track.png')), label: 'Track'),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/profile.png')), label: 'Profile'),
        ],
        onTap: (newIndex){
          setState(() {
            current_index = newIndex;
          });
        },
      ),
    );

  }

}