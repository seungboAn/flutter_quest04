import 'package:flutter/material.dart';
import 'package:mmac_service/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft, // Starting point of the gradient
            end: Alignment.bottomRight, // Ending point of the gradient
            colors: [
              Colors.black.withOpacity(0.9), // Darker shade of black
              Colors.black.withOpacity(0.6), // Lighter shade of black
            ],
          ),
        ), // 전체 배경을 검은색으로 설정
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome Back!',
                style: TextStyle(color: Colors.white, fontSize: 48),
              ),
              SizedBox(height: 20),
              Text(
                'James! Tap the button below to start chatting with Clove',
                style: TextStyle(color: Colors.white, fontSize: 14),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 200), // 여백 조정
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/chat'); // 채팅 화면으로 이동
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Set button background color to black for a modern look
                  foregroundColor: Colors.black, // Set text color to white for contrast
                  minimumSize: Size(80, 48), // Make the button take full width with a height of 48
                  padding: EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding for better touch area
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0), // Set corner radius to 16dp for rounded corners
                  ),
                  elevation: 4, // Add slight elevation for depth
                  shadowColor: Colors.black.withOpacity(0.2), // Subtle shadow color for depth
                ),
                child: Text('Start Chat'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
