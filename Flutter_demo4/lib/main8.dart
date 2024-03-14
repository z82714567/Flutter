/* 추상클래스 */
abstract class Animal {
  void sound();
}

class Dog implements Animal {
  void sound() {
    print("멍멍 잠와");
  }
}

class Cat implements Animal {
  void sound() {
    print("야옹 잠와");
  }
}

/*---------------물고기 추가-----------------*/
class Fish implements Animal {
  @override
  void sound() {}
}

// 전역 함수
void start(Animal a) {
  // 동적 바인딩 : Animal 추상 클래스의 sound함수가 오버라이드(무효화) 되고 자식의 Dog,Cat의 sound함수가 실행 됨.
  a.sound();
}

void main() {
  start(Dog());
  start(Cat());
}
