import 'package:flutter/material.dart';
import 'dart:convert';

class ResultScreen extends StatelessWidget {
  final String imageUrl;

  const ResultScreen({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    // JSON 파싱
    Map<String, dynamic> jsonMap = json.decode(imageUrl);

    // "base64Image" 키에 대한 값 추출
    String base64Image = jsonMap['base64Image'];

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: screenHeight,
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
                  margin: const EdgeInsets.only(top: 20),
                  child: const Center(
                    child: SizedBox(
                      width: 180,
                      height: 40,
                      child: Text(
                        'TABO',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 36, bottom: 40),
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.6,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255)
                        .withOpacity(0.5),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: base64Image.isNotEmpty
                      ? Center(
                          child: Image.memory(
                            // Convert Base64 string to Uint8List
                            base64.decode(base64Image),
                            width: screenWidth * 0.9,
                            height: screenHeight * 0.6,
                            fit: BoxFit.cover,
                          ),
                        )
                      : Container(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // 버튼을 눌렀을 때 사진 촬영
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(30),
                          side: const BorderSide(
                            width: 5,
                            color: Color.fromARGB(255, 198, 166, 248),
                          ),
                        ),
                        child: const Icon(
                          Icons.download,
                          color: Color.fromARGB(255, 198, 166, 248),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text(
                    '다운로드',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFC6AFFF),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
