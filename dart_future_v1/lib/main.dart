

void main() async{

  // 비동기 프로그래밍
  // 키워드 묶음 - async, await : Future (1회성 응답을 돌려 받는 경우)
  // Future라는 비동기 함수를 async, await를 같이 쓰면 동기성으로 변경되며 값이 자동으로 꺼내짐

  print("tast....1");
  // 비동기 함수 만들기
  var data1 = await fetchData(); // Future라는 데이터 타입이 들어감
  print("tast....$data1");
  print("tast....3");

}

// 비동기 함수 - Future
Future<String> fetchData(){
  // 2초 뒤 데이터 가져옴
  return Future.delayed(Duration(seconds: 2), (){ // delayed(Duration(seconds: 2) = Java의 Thread.sleep() 메소드
    return "연산 완료 처리"; // 2초 뒤에 연산할 함수
  }); }

