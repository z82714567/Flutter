
void main() async{

/*  var result1 = addNumber1(100, 200);
  print(result1);
  print(result1.runtimeType);
  result1.then((value) => print("result1 소화 : $value")); // Future 소화시키는 방법 2
  */
  print("------------------");

  var result2 = await addNumber2(100, 200);
  print(result2);
  // Future 소화시키는 방법 2
  //result2.then((v) => print("result2 소화 : $v"));
  print("------------------222222222");
}

  // 응용2
  Future<int> addNumber2(int n1, int n2){
    return Future.delayed(Duration(seconds: 3), ()=> n1 + n2);
  }


  // 응용
  // 함수 설계, 인수 2개 int값을 받아서 2초 뒤 연산되는 함수
  // 동기적 방식으로 처리 async,await
  Future<int> addNumber1(int n1, int n2) async{
    print("함수 시작 1");
    var result = 0;
    await Future.delayed(Duration(seconds: 2), (){
      result = n1 + n2;
    });
    print("함수 완료 2");
    return result;
  }

