void main() {
  print("main10.dart 파일 입니다.");

  //자료구조 List Set Map
  List<String> footballPlayers = ['메시', '손흥민', '김민재', '조규성'];

  //1. 자료구조와 익명 함수
  //dart List는 Iterable(반복)을 구현하고 있음
  //그래서 리스트는 반복 가능한 객체다 라고 말할 수 있음
  footballPlayers.forEach((e) {
    print("축구선수 ${e}");
  });
  print("------------------");
  //화살표 함수로 변경
  footballPlayers.forEach((e) => print("축구선수 ${e}"));

  List<int> numbers = [10,20,30,40,50];
  int sum1 = 0; //익명 함수용
  int sum2 = 0; //화살표 함수용
  //forEach()활용해서 리스트 안의 요소들의 덧셈 값을 연산하고 출력
  
  //익명 함수 사용
  numbers.forEach((e) {
    sum1 = sum1 + e;
    print("덧셈 값은 ${sum1}");
  });

  print("덧셈 값은 : ${sum1}");

  print("------------------");
  //람다식 사용
  numbers.forEach((e) =>
      //sum2 = sum2 + e
      print("덧셈 값 ${sum2 = sum2 + e}"));
  print(sum2);
}