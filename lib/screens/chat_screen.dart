import 'package:flutter/material.dart';
import 'package:mmac_service/widgets/custom_app_bar.dart';
import 'package:camera/camera.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  CameraController? _controller;
  List<CameraDescription>? cameras;
  List<Map<String, String>> messages = [
    {'sender': 'user', 'text': 'Hi, Clove'},
    {'sender': 'ai', 'text': 'Hello, James! You seem a bit down today.'},
    {'sender': 'user', 'text': 'Yeah, I’ve had a rough day.'},
    {'sender': 'ai', 'text': 'I’m sorry to hear that. Want to talk about it?'},
    {'sender': 'user', 'text': 'I just feel overwhelmed with work.'},
    {'sender': 'ai', 'text': 'That’s understandable. Taking breaks can really help. Have you had a chance to relax?'},
    {'sender': 'user', 'text': 'Not really. I’ve been working non-stop.'},
    {'sender': 'ai', 'text': 'It might be helpful to step away for a few minutes. How about a short walk?'},
    {'sender': 'user', 'text': 'That sounds good. I’ll try that.'},
    {'sender': 'ai', 'text': 'Great! Remember, it’s important to take care of yourself.'},
    {'sender': 'user', 'text': 'Thanks, Clove. I appreciate your help!'},
    {'sender': 'ai', 'text': "You're welcome, James! I'm here whenever you need me."},
  ];
  bool isPhotoMode = true;
  bool isListening = true;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    cameras = await availableCameras(); // 사용 가능한 카메라 가져오기
    if (cameras!.isNotEmpty) {
      _controller = CameraController(
        cameras![0], // 첫 번째 카메라 사용
        ResolutionPreset.high,
      );
      await _controller!.initialize();
      setState(() {});
    }
  }

  @override
  void dispose() {
    _controller?.dispose(); // 카메라 컨트롤러 해제
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Stack(
        children: [
          Container(
            height: double.infinity, // 전체 세로 길이로 설정
            color: const Color.fromRGBO(0, 0, 0, 1), // 전체 배경을 검은색으로 설정
            child: _controller == null || !_controller!.value.isInitialized
                ? Center(child: CircularProgressIndicator()) // 로딩 인디케이터
                : CameraPreview(_controller!), // 카메라 프리뷰 표시
          ),
          Positioned(
            top: 0, // 프롬프트 메시지 아래에 위치하도록 조정
            left: 0,
            right: 0,
            child: Container(
              color: Colors.black,
              padding: EdgeInsets.all(16.0),
              height: 100, // 배경색을 투명으로 설정
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final message = messages[index];
                  final isUserMessage = message['sender'] == 'user';

                  return Align(
                    alignment: isUserMessage ? Alignment.centerRight : Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        message['text']!,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 100,
            child: BottomAppBar(
              color: Colors.black.withOpacity(0.75), // 반투명 배경으로 설정
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.feedback_outlined, color: Colors.white.withOpacity(0.7)), // Report button
                    onPressed: () {
                      // Handle report action
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      isPhotoMode ? Icons.videocam : Icons.camera_alt_outlined, // Change icon based on mode
                      color: Colors.white.withOpacity(0.7), // Change color based on mode
                    ),
                    onPressed: () {
                      setState(() {
                        isPhotoMode = !isPhotoMode; // Toggle between photo and video mode
                      });
                      // Optionally handle camera mode switch here
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.circle, color: Colors.red.withOpacity(0.7)), // 카메라 아이콘 추가
                    onPressed: () {
                      // 카메라 관련 동작 추가
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.cancel, color: Colors.white.withOpacity(0.7)), // 마이크 아이콘 추가
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.lens_blur, color: Colors.white.withOpacity(0.7)), // 설정 아이콘 추가
                    onPressed: () {
                      Navigator.pushNamed(context, '/settings'); // 설정 페이지로 이동
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
