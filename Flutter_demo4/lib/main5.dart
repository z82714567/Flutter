/* 상속 구조 생성 --> 부모클래스 단일 생성자 생성 --> 자식 클래스 이니셜라이져 생성 */
class Fruit {
  String? name;
  Fruit(this.name); // 단일 라인 생성자
}

/* 이니셜라이져(:) */
class Orange extends Fruit {
  Orange(String name) : super(name); //이니셜라이저 키워드
}

void main() {
  Orange orange = Orange("오렌지");
  print(orange.name);
}
