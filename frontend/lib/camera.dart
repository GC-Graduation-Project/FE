import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'result.dart';

void main() {
  runApp(const CameraRecognitionScreen());
}

class CameraRecognitionScreen extends StatefulWidget {
  const CameraRecognitionScreen({Key? key}) : super(key: key);

  @override
  _CameraRecognitionScreenState createState() =>
      _CameraRecognitionScreenState();
}

class _CameraRecognitionScreenState extends State<CameraRecognitionScreen> {
  XFile? _cameraImage; // Variable to store the image
  final ImagePicker picker = ImagePicker(); // Initialize ImagePicker

  // Function to get the image
  Future<void> getImage(ImageSource imageSource) async {
    final XFile? pickedFile = await picker.pickImage(source: imageSource);
    if (pickedFile != null) {
      setState(() {
        _cameraImage = pickedFile; // Store the picked image in _image
      });
    }
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
                  child: _cameraImage != null
                      ? Image.file(File(_cameraImage!.path))
                      : Container(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 120,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          getImage(ImageSource.camera);
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
                          Icons.camera_enhance,
                          color: Color.fromARGB(255, 198, 166, 248),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_forward),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResultScreen(
                                    imageUrl: '',
                                  )),
                        );
                      },
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text(
                    '촬영',
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
