

void main() async {

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

  print(await name);
  print(await number);
  print(await isTure);
  print("--------------");

}

