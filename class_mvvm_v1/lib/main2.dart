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



  // 뷰에서는 뷰모델만 바라 보면 된다.
  final CounterViewModel viewModel = CounterViewModel();

  

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
            Text('숫자 확인(핵심 데이터) ${viewModel.counter}'),
            ElevatedButton(
              onPressed: (){
                // 버튼 클릭 --> 숫자 증가
                setState(() {
                  viewModel.increamentCounter();
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
