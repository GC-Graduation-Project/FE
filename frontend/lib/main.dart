import 'package:flutter/material.dart';
import 'result.dart';
import 'camera.dart';
import 'music.dart';
import 'picture.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    MainScreen(),
    CameraRecognitionScreen(),
    SheetRecognitionScreen(),
    AudioRecognitionScreen(),
    ResultScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Color.fromARGB(255, 167, 36, 255),
        unselectedItemColor: Color.fromARGB(255, 186, 142, 216),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: '카메라',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: '악보',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_video),
            label: '음원',
          ),
        ],
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 800,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [
                Color(0xFFC1ACFF),
                Color.fromARGB(255, 201, 182, 255),
                Color.fromARGB(255, 235, 207, 255),
                Color.fromARGB(255, 244, 206, 255),
                Color.fromARGB(255, 251, 229, 254),
                Colors.white
              ],
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 120),
                child: const SizedBox(
                  height: 60,
                  child: Center(
                    child: Text(
                      '000 님께서',
                      style: TextStyle(
                        color: Color(0xFF3B3A3A),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: const SizedBox(
                  height: 60,
                  child: Center(
                    child: Text(
                      '최근 사용한 ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 60),
                child: const SizedBox(
                  height: 60,
                  child: Center(
                    child: Text(
                      'TABO',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: 'Righteous',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 10,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x774E2B6C),
                      blurRadius: 10,
                      offset: Offset(0, 4),
                      spreadRadius: 2,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 32,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border(
                          right: BorderSide(
                            width: 2,
                            color: Color(0xFFB59CFF),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 240,
                      height: 40,
                      child: Center(
                        child: Text(
                          'first music.mp3',
                          style: TextStyle(
                            color: Color.fromARGB(255, 77, 55, 87),
                            fontSize: 18,
                            fontFamily: 'Righteous',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x774E2B6C),
                      blurRadius: 10,
                      offset: Offset(0, 4),
                      spreadRadius: 2,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 32,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border(
                          right: BorderSide(
                            width: 2,
                            color: Color(0xFFB59CFF),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 240,
                      height: 40,
                      child: Center(
                        child: Text(
                          'haul.wav',
                          style: TextStyle(
                            color: Color.fromARGB(255, 77, 55, 87),
                            fontSize: 18,
                            fontFamily: 'Righteous',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x774E2B6C),
                      blurRadius: 10,
                      offset: Offset(0, 4),
                      spreadRadius: 2,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 32,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border(
                          right: BorderSide(
                            width: 2,
                            color: Color(0xFFB59CFF),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 240,
                      height: 40,
                      child: Center(
                        child: Text(
                          'no_one_like_you.mp3',
                          style: TextStyle(
                            color: Color.fromARGB(255, 77, 55, 87),
                            fontSize: 18,
                            fontFamily: 'Righteous',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x774E2B6C),
                      blurRadius: 10,
                      offset: Offset(0, 4),
                      spreadRadius: 2,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 32,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border(
                          right: BorderSide(
                            width: 2,
                            color: Color(0xFFB59CFF),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 240,
                      height: 40,
                      child: Center(
                        child: Text(
                          'jinglebell.mp3',
                          style: TextStyle(
                            color: Color.fromARGB(255, 77, 55, 87),
                            fontSize: 18,
                            fontFamily: 'Righteous',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
