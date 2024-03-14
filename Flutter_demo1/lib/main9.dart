void main() {
  print("main9.dart 파일 입니다.");

  //1. 익명 함수 : 이름이 없는 함수(선언을 하더라도 다시 호출 할 방법이 없음 = 재사용x)
  (int number){
    return 100 + number;
  }; //익명 함수의 마지막에는 세미콜론이 있어야 함
  //변수에 할당하지 않고 바로 익명 함수 호출 하는 것은 dart에서는 불가능 함

  //2. 함수를 변수에 담을 수 있음(dart는 일급 객체를 지원함)
   var square = (int number){
    return number * number;
  };
  print("square : ${square.runtimeType}");

  //2-1. 명시적 타입과(Function)리턴 타입이 생략, 파라미터 타입도 생략 가능
  Function sub = (a,b){
    return a - b;
  };
  
  //3. var키워드에 사용(타입 추론: 자동으로 타입을 할당)
  var cube = (int number){
    return number * number * number;
  };

  //4. 익명 함수 파라미터 타입 생략 가능
  var add = (number){
    return number + 10;
  };

  //5.
  var multiply = (a, b){
    return a * b;
  };

  //메서드 호출은 괄호()이다.
  print("2의 제곱은 ${square(2)}");
  print("두 수의 빼기 연산 ${sub(10,11)}");
  print("3의 세제곱은 ${cube(3)}");
  print("곱셈의 결괏값은 ${multiply(10,20)}");

  //두 수를 받고 덧셈을 하는 익명 함수 설계, 호출
  Function plus = (a,b){
    return a + b;
  };
  print("두 수의 덧셈 연산 ${plus(10,11)}");


}


