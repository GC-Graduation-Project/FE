import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'result.dart';

void main() {
  runApp(const AudioRecognitionScreen());
}

class AudioRecognitionScreen extends StatefulWidget {
  const AudioRecognitionScreen({Key? key}) : super(key: key);

  @override
  _AudioRecognitionScreenState createState() => _AudioRecognitionScreenState();
}

class _AudioRecognitionScreenState extends State<AudioRecognitionScreen> {
  String? filePath;
  String? fileName;

  Future<void> pickAudioFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['mp3', 'wav'],
    );

    if (result != null) {
      //PlatformFile file = result.files.first;
      filePath = result.files.single.path;
      fileName = result.files.single.name;
      setState(() {});
    }
  }

  Future<void> uploadAndRequestServer(String filePath) async {
    var dio = Dio();
    dio.options.contentType = 'multipart/form-data';
    var formData =
        FormData.fromMap({'file': await MultipartFile.fromFile(filePath)});
    var response =
        await dio.post('http://localhost:8000/source/source', data: formData);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(imageUrl: response.data),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
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
                  child: filePath != null
                      ? Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'assets/images/music.png',
                              width: screenWidth * 0.45,
                              fit: BoxFit.contain,
                            ),
                            Positioned(
                              bottom: 70,
                              child: Text(
                                fileName ?? 'No file selected',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Righteous',
                                ),
                              ),
                            ),
                          ],
                        )
                      : const SizedBox(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          width: 3,
                          color: const Color.fromARGB(255, 198, 166, 248),
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () async {
                          pickAudioFile();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: const Text(
                          'Guitar',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFC6AFFF),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 3,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          width: 3,
                          color: const Color.fromARGB(255, 198, 166, 248),
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: const Text(
                          'Bass',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFC6AFFF),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 3,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          width: 3,
                          color: const Color.fromARGB(255, 198, 166, 248),
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: const Text(
                          'Ukulele',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFC6AFFF),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 3,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      width: 3,
                      color: const Color.fromARGB(255, 198, 166, 248),
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () async {
                      if (filePath != null) {
                        await uploadAndRequestServer(filePath!);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text(
                      'Convert Into TABO',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFC6AFFF),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 3,
                      ),
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
