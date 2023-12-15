import 'package:flutter/material.dart';

void main() {
  runApp(AudioRecognitionScreen());
}

class AudioRecognitionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 800,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [
                Color(0xFFC1ACFF),
                Color.fromARGB(255, 213, 190, 255),
                Color.fromARGB(255, 254, 213, 255),
                Color.fromARGB(255, 254, 246, 255),
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
                          decoration: const BoxDecoration(
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
                        left: 301,
                        top: 20,
                        child: Container(
                          width: 28,
                          height: 24,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: const Stack(children: []),
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
                      const Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 180,
                          height: 40,
                          child: Center(
                            // Center 추가
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
                      ),
                      Positioned(
                        left: 43,
                        top: 0,
                        child: Container(
                          width: 40,
                          height: 40,
                          padding: const EdgeInsets.only(left: 2.78),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(), // BoxDecoration 수정
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
                            horizontal: 2.92,
                            vertical: 1,
                          ),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(), // BoxDecoration 수정
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
                left: 156,
                top: 284,
                child: Container(
                  width: 48,
                  height: 48,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 32,
                        height: 40,
                        child: const Stack(children: []),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 60,
                top: 328,
                child: SizedBox(
                  width: 240,
                  height: 84,
                  child: Text(
                    'click to select \nthe music file',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xEF474747),
                      fontSize: 18,
                      fontFamily: 'Righteous',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 580,
                child: Container(
                  width: 100,
                  height: 48,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 100,
                          height: 48,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFB1ABFF),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFFB1ABFF)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 78,
                          height: 48,
                          child: Text(
                            'guitar',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color:
                                  Colors.white.withOpacity(0.9399999976158142),
                              fontSize: 14,
                              fontFamily: 'Righteous',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 67.33,
                        top: 12,
                        child: Container(
                          width: 23.76,
                          height: 24,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 71.29,
                        top: 16,
                        child: Container(
                          width: 15.84,
                          height: 16,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 15.84,
                                height: 16,
                                child: const Stack(children: []),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 23,
                top: 652,
                child: Container(
                  width: 320,
                  height: 48,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 320,
                          height: 48,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFFB1ABFF)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 86,
                        top: 0,
                        child: SizedBox(
                          width: 148,
                          height: 48,
                          child: Text(
                            'Convert Into TABO',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xEFB2ABFF),
                              fontSize: 14,
                              fontFamily: 'Righteous',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 240,
                top: 580,
                child: Container(
                  width: 100,
                  height: 48,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 100,
                          height: 48,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFFB1ABFF)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 78,
                          height: 48,
                          child: Text(
                            'ukulele',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xEFB2ABFF),
                              fontSize: 14,
                              fontFamily: 'Righteous',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 68,
                        top: 12,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFFB1ABFF)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 72,
                        top: 16,
                        child: Container(
                          width: 16,
                          height: 16,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 16,
                                height: 16,
                                child: const Stack(children: []),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 130,
                top: 580,
                child: Container(
                  width: 100,
                  height: 48,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 100,
                          height: 48,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFFB1ABFF)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 78,
                          height: 48,
                          child: Text(
                            'bass',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xEFB2ABFF),
                              fontSize: 14,
                              fontFamily: 'Righteous',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 68,
                        top: 12,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFFB1ABFF)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 72,
                        top: 16,
                        child: Container(
                          width: 16,
                          height: 16,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 16,
                                height: 16,
                                child: const Stack(children: []),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
