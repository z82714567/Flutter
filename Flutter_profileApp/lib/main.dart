import 'package:dev_flutter/components/profile_buttons.dart';
import 'package:dev_flutter/components/profile_count_info.dart';
import 'package:dev_flutter/components/profile_drawer.dart';
import 'package:dev_flutter/components/profile_header.dart';
import 'package:dev_flutter/components/profile_tab.dart';
import 'package:dev_flutter/theme.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp() : 해당 하는 위젯을 루트 위젯으로 만들어 줌
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // build() : 객체가 메모리에 올라가면 자동으로 한 번은 호출됨. 그림을 그려주는 함수.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(), // 만들어 둔 함수 호출
      home: ProfilePage(),
    );
  }
} // end of MyApp

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildProfileAppBar(),
        endDrawer: ProfileDrawer(),
        body: Column(
          children: [
            const SizedBox(height: 20),
            ProfileHeader(),
            const SizedBox(height: 20),
            ProfileCountInfo(),
            const SizedBox(height: 20),
            ProfileButtons(),
            Expanded(
                flex: 1, // 기본값, 남은 공간 전부 차지함
                child: ProfileTab()), // 남아 있는 세로 공간을 모두 차지, 확장
          ],
        ),
      ),
    );
  }

  AppBar _buildProfileAppBar() {
    return AppBar(
      leading: const Icon(Icons.arrow_back_ios),
      title: const Text('Profile'),
      centerTitle: true,
    );
  }
} // end of class
