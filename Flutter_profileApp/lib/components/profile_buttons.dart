import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildFollowButton(),
        _buildMessageButton(),
      ],
    );
  }

  Widget _buildFollowButton() {
    return InkWell(
      // 버튼화
      onTap: () {
        print('Follow 버튼 --> 이벤트 핸들러 처리');
      }, // 이벤트 리스너 등록
      child: Container(
        width: 150,
        height: 45,
        child: Container(
          alignment: Alignment
              .center, //text - container 감싸는 방법 > text - center 감싸는 방법 : 메모리를 좀 더 효율적 쓰임
          child: Text(
            "Follow",
            style: TextStyle(color: Colors.white),
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  Widget _buildMessageButton() {
    return InkWell(
      onTap: () {
        print('Message 버튼 --> 이벤트 핸들러 처리');
      },
      child: Container(
        width: 150,
        height: 45,
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "Message",
            style: TextStyle(color: Colors.black),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(),
        ),
      ),
    );
  }
}
