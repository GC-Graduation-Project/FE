import 'package:flutter/material.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: MusicList(),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.camera), text: 'Camera'),
              Tab(icon: Icon(Icons.music_note), text: 'Music'),
              Tab(icon: Icon(Icons.headphones), text: 'Headphones'),
            ],
          ),
        ),
      ),
    );
  }
}

class MusicList extends StatelessWidget {
  const MusicList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: 800,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [
                Color(0xFFC1ACFF),
                Color.fromARGB(255, 214, 200, 254),
                Color.fromARGB(255, 255, 224, 255),
                Color.fromARGB(255, 254, 206, 255),
                Color.fromARGB(255, 254, 246, 255),
                Colors.white
              ],
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    '000 님께서',
                    style: TextStyle(
                      color: Color(0xFF3B3A3A),
                      fontSize: 30,
                      fontFamily: 'Amaranth',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    '최근 사용한 ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Amaranth',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
                child: Center(
                  child: Text(
                    'TABO',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontFamily: 'Righteous',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: double.infinity,
                height: 100,
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
                            color: Color(0xEFB93DF3),
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
      ],
    );
  }
}
