/* 상속 */
class Burger {
  String? name;
  Burger() {}
}

/* SUPER 키워드 */
class CheeseBurger extends Burger {
  CheeseBurger(String name) {
    super.name = name;
  }
}

void main() {
  CheeseBurger cheeseBurger = CheeseBurger("치즈버그");
  print(cheeseBurger.name);
}
