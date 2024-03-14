import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        _buildHeaderAvator(), // 프로필 이미지
        const SizedBox(width: 20),
        _buildHeaderProfile() // 프로필 텍스트
      ],
    );
  }

  // 프로필 이미지
  Widget _buildHeaderAvator() {
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/avatar.png"),
      ),
    );
  }

  // 프로필 텍스트
  Widget _buildHeaderProfile() {
    return Column(
      // 컬럼 주축 방향 세로
      crossAxisAlignment: CrossAxisAlignment.start, // 교차축 가로 방향으로
      children: [
        Text(
          'GetinThere',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
          ),
        ),
        Text(
          '프로그래머/작가/강사',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          '데어 프로그래밍',
          style: TextStyle(fontSize: 15),
        )
      ],
    );
  }
}
