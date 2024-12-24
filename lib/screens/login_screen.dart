import 'package:flutter/material.dart';
import 'package:mmac_service/widgets/custom_app_bar.dart';

class LoginScreen extends StatelessWidget {
  static const String loading = '/loading'; // 로딩 페이지 라우트 정의

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
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 48),
                ),
                SizedBox(height: 16),
                Text(
                  'Please enter your email and password to continue.',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.2),
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.white54),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.2),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white54),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, loading); // 로딩 페이지로 이동
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
                  child:
                      Text('Login'),
                ),
                SizedBox(height: 48),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, loading); // 로딩 페이지로 이동
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // 흰색 배경으로 설정
                    foregroundColor: Colors.black, // 구글 블루 색상으로 텍스트 색상 설정
                    minimumSize: Size(60, 48), // 전체 가로를 차지하고 기본 높이 설정
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0), // 모서리 반경을 32dp로 설정
                    ),
                  ),
                  icon: Image.network(
                    'https://lh3.googleusercontent.com/qnaJEbFIpvsWJm2KrRI_GIvz1yZdXntgEsCZxy-1pVZi244bCk1RFwdk0ZBRmmvdHiUl6sIa_tsmskL5WLKiigp2AMsIIxinOJNf39qCmacViRGXIOY',
                    height: 24, // 구글 로고 아이콘 추가
                  ),
                  label: Text('Sign in with Google'), // 버튼 레이블
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
