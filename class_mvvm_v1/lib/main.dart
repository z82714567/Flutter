import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}

// View
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  // 핵심 데이터 선정
  // Model에서 데이터와 관련된 로직이 포함됨.
  int _counter = 0; // _ : private
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('뷰모델 없는 코드 작성해보기'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('간단한 뷰와 모델 예제'),
            Text('숫자 확인(핵심 데이터) ${_counter}'),
            ElevatedButton(
              onPressed: (){
                // 버튼 클릭 --> 숫자 증가
                setState(() {
                  _counter++;
                });
              },
              child: Text('문자열 증감'),
            ),
          ],
        ),
      ),
    );
  }
}

// 1단계에서는 MV개념으로 코딩을 했다면 ViewModel이라는 개념을 적용시켜 보자!

// ViewModel
class CounterViewModel{
  int _counter = 0;
  int get counter => _counter;

  void increamentCounter(){
    _counter++;
  }

}
