void main(){

  //runtimeType 활용

    //int n1 = 1;
    //double d1 = 10.1;
    //bool b1 = true;
    //String s1 = '홍길동';

    //var n1 = 1;
    //var d1 = 10.1;
    //var b1 = true;
    //var s1 = '홍길동'; //dart언어 문자열 사용 시 홑따옴표(권장),쌍따옴표 지원 가능

    //dynamic n1 = 1;
    //print("n1 타입 확인 : ${n1.runtimeType}");
    // dynamic 타입은 모든 타입을 받을 수 있고 다른 타입으로 변경이 가능하다.
    //n1 = 100.1;
    //print(" n1 타입 확인 : ${n1.runtimeType}");

    //산술 연산자
    //더하기
    print("3 + 2 = ${3+2}");
    //빼기
    print("3 - 2 = ${3-2}");
    //곱하기
    print("3 * 2 = ${3*2}");
    //나누기
    print("5 / 3 = ${5/3}");
    //나머지
    print("3 % 2 = ${3%2}");
    //몫 구하기
    print("3 ~/ 2 = ${3~/2}");

  //dart언어는 거의 모든 것이 객체로 설계 되어 있다.

  //dart 타입추론 가능
  ///Dart 언어는 타입 추론을 지원합니다. 값이 들어올 때 타입을 추론하여 변수를 초기화합니다.
  ///var과 dynamic의 차이는 var은 타입 변경이 불가능하고 dynamic은 타입 변경이 가능합니다.


    //print("n1 : ${n1.runtimeType}");
    //print("d1 : ${d1.runtimeType}");
    //print("b1 : ${b1.runtimeType}");
    //print("s1 : ${s1.runtimeType}");

  // 주의 사항 var 은 한번 초기화 되면 타입 변경은 불가능 하다
  // n1 = 10.1; 한 번 초기화 된 데이터 타입은 변경 불가

    //print("정수 : ${n1.runtimeType}");
    //print("실수 : ${d1.runtimeType}"); // 연산을 해야 한다면 중괄호는 필수
    //print("부울 : ${b1.runtimeType}");
    //print("문자열 : ${s1.runtimeType}");

  //ctrl + shfit + F10 실행
}