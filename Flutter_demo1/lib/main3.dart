
void main(){
  print("main3.dart 파일 입니다.");

  //논리연산자
  print('!true -> ${!true}');
  print('true && false -> ${true && false}');
  //AND -> 빠른평가
  print('false && true -> ${false && true}');

  //빠른평가
  print('true || true -> ${true || true}');
  print('false || true -> ${false || true}');


  print("-----------------------------------------------------");
  var n1= 0;
  var n2= 10;
  print('true || true -> ${(n1 = 100) > 50 || (n2 = 200) > 100}');
  print("현재 시점에 n1의 값은 ${n1}");
  print("현재 시점에 n2의 값은 ${n2}"); // 빠른평가가 되어서 n2가 10임
}