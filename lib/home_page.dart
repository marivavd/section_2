import 'package:flutter/material.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage_State();
}
class _HomePage_State extends State<HomePage> {
  int current_index = 0;
  var widgets = [Scaffold(), Scaffold(), Scaffold(), ProfilePage()];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(child: widgets[current_index]),
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