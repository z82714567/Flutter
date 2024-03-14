void main(){
  print("main5.dart 파일 입니다.");

  //null 세이프티 기능 제공
  //String username = null;
  
  //String != String? <-- null값이 들어올 수 있음
  String? username = null;
  //print(username);

  //null 대체 연산자(??)
  print(username ?? "홍길동");

  // dart에서는 기본적으로 null값을 허용 안함
  // 사용하고자 한다면 nullable(?)을 활용 해야 함

}