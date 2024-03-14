//코드의 시작점
//2단계 생성자 학습
void main() {
  //생성자  -- 강제성
  Dog d1 = Dog(age: 10, color: 'yellow', thirsty: 70, name: 'toto');
  print(d1.name);
}

class Dog {
  String name;
  int age;
  String color;
  int thirsty; //갈증지수 목마름

  //메서드, 함수, 생성 --> 파라미터 설계(단일 라인 생성자 :생략했었음)
  //파라미터 --> 선택적 매개 변수 : 함수({중괄호로 감싸면 된다});
  Dog(
      {required this.name,
      required this.age,
      required this.color,
      required this.thirsty}); //required = 반드시 쓰라는 뜻
}
