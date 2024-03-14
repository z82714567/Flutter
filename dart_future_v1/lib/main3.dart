
void main() {

  //Future타입과 값을 꺼내는 방법
  //Future 타입 선언
  //Future에서 delayed 함수 없어도 기본적으로 비동기 통신을 함
  Future<String> name = Future.value("텐코");
  Future<int> number = Future.value(100);
  Future<bool> isTure = Future.value(true);

  print(name);
  print(number);
  print(isTure);
  print("--------------");

  // 1. Future타입을 소화시키는 방법 : Future타입을 동기성으로 만들기
  // 2. Future타입을 소화시키는 방법 : 콜백 메서드
  // 3. Future타입을 소화시키는 방법 : 1,2 둘 다 써도 됨
  
  //print(await name)
  name.then((value) => print("미래 타입 값 꺼내기 콜백 : $value"));
  number.then((e) => print("미래 타입 값 꺼내기 콜백 : $e"));
  isTure.then((value) => {print("미래 타입 값 꺼내기 콜백 : $value")});


}

