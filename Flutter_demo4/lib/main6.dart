class Dog {
  void sound() {
    print("멍멍 잠와");
  }
}

class Cat {
  void sound() {
    print("야옹 잠와");
  }
}

/*---------------물고기 추가-----------------*/
class Fish {
  void sleep() {
    print("뻐끔뻐끔 잠와");
  }
}

void main() {
  Dog d1 = Dog();
  Cat c1 = Cat();
  Fish f1 = Fish();

  d1.sound();
  c1.sound();
  // f1.sound();  오류
}
