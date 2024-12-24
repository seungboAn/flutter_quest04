import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); // AppBar의 기본 높이 설정

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(
        icon: Icon(Icons.language, color: Colors.white), // 왼쪽 아이콘 색상 흰색
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
      ),
      title: Text(
        'Clove', // 모든 페이지에서 동일한 제목 사용
        style: TextStyle(color: Colors.white, fontSize: 20), // 제목 텍스트 색상
      ),
      centerTitle: true, // 제목을 중앙에 배치
      actions: [
        IconButton(
          icon: Icon(Icons.more_vert, color: Colors.white), // 오른쪽 설정 아이콘 색상 흰색
          onPressed: () {
            // 설정 클릭 시 동작
            Navigator.pushNamed(context, '/settings');
          },
        ),
      ],
    );
  }
}
