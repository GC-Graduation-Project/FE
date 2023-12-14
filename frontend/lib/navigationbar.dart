import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
        BottomNavigationBarItem(icon: Icon(Icons.camera), label: '카메라 인식'),
        BottomNavigationBarItem(icon: Icon(Icons.music_note), label: '악보 인식'),
        BottomNavigationBarItem(icon: Icon(Icons.headphones), label: '음원 인식')
      ],
    );
  }
}
