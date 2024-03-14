import 'package:flutter/material.dart';

//
class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.infinity, // 세로는 디바이스 크기만큼
      color: Colors.blue,
    );
  }
}
