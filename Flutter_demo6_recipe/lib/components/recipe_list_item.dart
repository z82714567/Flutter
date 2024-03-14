import 'package:flutter/material.' 'dart';

class RecipeListItem extends StatelessWidget {
  final String imageName; // 한 번 값이 들어가면 변경할 수 없는 상수값
  final String title;

  // dart에서는 오버로딩이 없다. required 반드시 값 지정
  const RecipeListItem(
      {required this.imageName, required this.title, super.key});

  // build()함수란 화면에 그림을 그려주는 함수
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 이미지 비율 정하기
          AspectRatio(
            aspectRatio: 2 / 1,
            // 모서리 곡선 주기
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                "assets/images/$imageName.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          Text("Have you ever made your own $title? "
              "Once you've tried a homemade $title, "
              "you'll never go back.")
        ],
      ),
    );
  }
}
