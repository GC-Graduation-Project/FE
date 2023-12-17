import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';

class ResultScreen extends StatelessWidget {
  final String imageUrl;

  const ResultScreen({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    // JSON 파싱
    Map<String, dynamic> jsonMap = json.decode(imageUrl);

    // "base64Image" 키에 대한 값 추출
    String base64Image = jsonMap['base64Image'];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    margin: EdgeInsets.only(top: screenHeight * 0.06),
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
                    margin: EdgeInsets.only(
                        top: screenHeight * 0.03, bottom: screenHeight * 0.05),
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.55,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255)
                          .withOpacity(0.5),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: base64Image.isNotEmpty
                        ? Center(
                            child: Image.memory(
                              // Convert Base64 string to Uint8List
                              base64.decode(base64Image),
                              width: screenWidth * 0.9,
                              height: screenHeight * 0.6,
                              fit: BoxFit.contain,
                            ),
                          )
                        : Container(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            saveImageToGallery(context, base64Image);
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.all(25),
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
                      const SizedBox(
                        width: 120,
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
      ),
    );
  }

  Future<void> saveImageToGallery(
      BuildContext context, String base64Image) async {
    if (base64Image.isNotEmpty) {
      try {
        // Base64로 인코딩된 이미지 데이터를 Uint8List로 디코딩
        Uint8List uint8List = base64.decode(base64Image);

        // 갤러리에 이미지 저장
        final result = await ImageGallerySaver.saveImage(uint8List);

        if (result != null && result.isNotEmpty) {
          // 이미지 저장 완료 메시지
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Image saved to gallery successfully!'),
            ),
          );
        } else {
          // 이미지 저장 실패 메시지
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Failed to save image to gallery!'),
            ),
          );
        }
      } catch (e) {
        print('Error saving image to gallery: $e');
      }
    } else {
      // 이미지가 없는 경우
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please download an image first!'),
        ),
      );
    }
  }
}
