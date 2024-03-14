class Person {
  String? name;
  int money;

  //논너러블상태 --> 생성자 만듦
  //선택적 매개 변수 - 기본값(0) 설정
  Person({this.name, this.money = 0});
}

void main() {
  Person p1 = Person(name: '홍길동');
  Person p2 = Person(name: '고길동', money: 10000);
}
