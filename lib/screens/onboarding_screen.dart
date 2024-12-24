import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 검은색 배경 설정
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
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                'Clove',
                style: TextStyle(color: Colors.white, fontSize: 96),
              ),
              SizedBox(height: 16),
              Text(
                'Clove is your intelligent Ai assistant for life.\nEnjoy the power of LLM with Clove',
                style: TextStyle(color: Colors.white, fontSize: 12), textAlign: TextAlign.center,
              ),
              SizedBox(height: 256),
              // Toggle 및 Policy 텍스트를 포함하는 Row
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1), // 반투명 검은색 배경
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Toggle 버튼r
                    Switch(
                      value: true, // 여기에 상태를 연결하세요
                      onChanged: (value) {
                        // Toggle 상태 변경 처리
                      },
                    ),
                    SizedBox(width: 10),
                    // 정책 텍스트
                    Text(
                      'Video and Audio will be saved to improve\n your experience',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
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
                child: Text('Start'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
