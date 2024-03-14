import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({super.key});

  // build()함수란 화면에 그림을 그려주는 함수
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          // 아이콘1,2,3,4 (재사용해서 사용)
          // 여백
          // _ : private
          _buildMenuItem(Icons.food_bank, "ALL"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.emoji_food_beverage, "Coffee"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.fastfood, "Burger"),
          SizedBox(width: 25),
          _buildMenuItem(Icons.local_pizza, "Pizza"),
          SizedBox(width: 25),
        ],
      ),
    );
  }

  // 커스텀한 위젯을 만들어야 할 때 컨테이너 위젯을 활용(Widget 리턴타입 생략 가능)
  // Container : 꾸며주는 속성 존재
  Widget _buildMenuItem(IconData mIcon, String text) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black12),
      ),
      // 컬럼 -- 주축 방향 (세로), 교차축 방향 (가로)
      // 로우 -- 주축 방향 (가로), 교차축 방향 (세로)
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            mIcon,
            color: Colors.redAccent,
            size: 30,
          ),
          // const 컴파일시점에 상수되기 때문에 좀 더 빠름
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.black87),
          )
        ],
      ),
    );
  }
}
