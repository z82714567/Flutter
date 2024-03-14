void main() {
  print("main8.dart 파일 입니다.");

  calculateInterest(5000, 10, 1);

  print(calculateCircleArea(5.0));
  print(calculateRectangleArea(3.0, 4.0));

}

    //함수(객체와 관련 없는 기능)와 메서드(객체의 기능)의 차이


    //간단한 이자를 계산하는 함수 만들어 보기
    //원금, 이자율, 기간
    //이자 = 원금 * 이자율 * 시간
    void calculateInterest(double principal, double rate, double year){
      double interest = (principal * rate * year) / 100;
      print("간단한 이자 계산 금액은 ${interest} 입니다.");
    }

    //원의 넓이를 구하는 함수
    double calculateCircleArea(double radius){
      //파이 * 반지름 * 반지름
      return 3.14 * radius * radius;
    }

    //직사각형 넓이를 구하는 함수
    double calculateRectangleArea(double width, double height){
      return width * height;
    }