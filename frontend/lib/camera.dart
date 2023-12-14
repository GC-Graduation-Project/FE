import 'package:flutter/material.dart';
import 'package:frontend/main.dart';

void main() {
  runApp(const CameraScreen());
}

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            children: [
              MusicList(musiclist: '홈'),
              CameraRecognition(camera: '카메라 인식'),
              // CameraRecognition(tabTitle: '악보 인식'),
              // CameraRecognition(tabTitle: '음원 인식'),
            ],
          ),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: '홈'),
              Tab(icon: Icon(Icons.camera), text: '카메라 인식'),
              Tab(icon: Icon(Icons.music_note), text: '악보 인식'),
              Tab(icon: Icon(Icons.headphones), text: '음원 인식'),
            ],
          ),
        ),
      ),
    );
  }
}

class CameraRecognition extends StatelessWidget {
  final String camera;
  const CameraRecognition({Key? key, required this.camera}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 800,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [
                Color(0xFFC1ACFF),
                Color(0xDBD5BEFF),
                Color(0x5BFED5FF),
                Color(0xB9FEF6FF),
                Colors.white
              ],
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 732,
                child: Container(
                  width: 360,
                  height: 68,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 360,
                          height: 68,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              left: BorderSide(color: Color(0xFFF3E6FF)),
                              top: BorderSide(
                                  width: 2, color: Color(0xFFF3E6FF)),
                              right: BorderSide(color: Color(0xFFF3E6FF)),
                              bottom: BorderSide(color: Color(0xFFF3E6FF)),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 42,
                        top: 48,
                        child: Text(
                          '홈',
                          style: TextStyle(
                            color: Color(0xFFC6AFFF),
                            fontSize: 6,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 121,
                        top: 48,
                        child: Text(
                          '카메라 인식',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFC6AFFF),
                            fontSize: 6,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 213,
                        top: 48,
                        child: Text(
                          '악보 인식',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFC6AFFF),
                            fontSize: 6,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 303,
                        top: 48,
                        child: Text(
                          '음원 인식',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFC6AFFF),
                            fontSize: 6,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 301,
                        top: 20,
                        child: Container(
                          width: 28,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(children: []),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 90,
                top: 40,
                child: Container(
                  width: 180,
                  height: 40,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 180,
                          height: 40,
                          child: Text(
                            'T  BO',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontFamily: 'Righteous',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: 10,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 43,
                        top: 0,
                        child: Container(
                          width: 40,
                          height: 40,
                          padding: const EdgeInsets.only(left: 2.78),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                child: Stack(children: []),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 139,
                        top: 15,
                        child: Container(
                          width: 14,
                          height: 12,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 2.92, vertical: 1),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 140,
                top: 596,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(
                      side: BorderSide(width: 5, color: Color(0xFFA066FF)),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 316,
                top: 606,
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(1.57),
                  child: Container(
                    width: 60,
                    height: 30,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.57, vertical: 6.67),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 166,
                top: 684,
                child: Text(
                  '재촬영',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFC6AFFF),
                    fontSize: 10,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 292,
                top: 683,
                child: Text(
                  '변환',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFC6AFFF),
                    fontSize: 10,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 330,
                top: 136,
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(1.57),
                  child: Container(
                    width: 400,
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            NetworkImage("https://via.placeholder.com/400x300"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
