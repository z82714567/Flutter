/* 상속 */
class Burger {
  Burger() {
    print('버거');
  }
}

class CheeseBurger extends Burger {
  CheeseBurger() {
    print('치즈버거');
  }
}

void main() {
  CheeseBurger cheeseBurger = CheeseBurger(); /*버거 치즈버거*/
  Burger burger = CheeseBurger(); /* 다형성 적용*/ /*버거 치즈버거*/
}
