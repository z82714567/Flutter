/* late키워드 */
class Myclass {
  late String name;

  Myclass() {
    // 서버에서 요청한 값을 받아서 클래스를 만들어야 될 때
    // 통신을 통해 초기값을 받아야 하는 경우 사용이 가능함

    name = '홍길동';
  }

  void printString() {
    print('name : $name');
  }
}

void main() {
  // final 상수로 만들 때 --> 런타임 시점에 상수
  // const 상수로 만들 때 --> 컴파일 시점에 상수
  final myObject = Myclass();
  myObject.printString();
}
