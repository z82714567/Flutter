import 'dart:convert';

main() {
 // 통신을 하지 않고 직접 json형식의 데이터 만들기
  String jsonStr = ''' 
          {
            "userId": 1,
            "id": 100,
            "title": "json 파싱이란?",
            "completed": false 
          }
  
  '''; // ''' '''여러줄 작성, 위 코드는 단지 json형식인 문자열일 뿐

  // 1단계 - 라이브러리 필요 import 'dart:convert';
  // json 문자열을 파싱하여 먼저 map객체로 변환을 해야 한다.
  Map<String, dynamic> jsonStrToMap = json.decode(jsonStr); //dynamic타입 : 런타임 시점에 타입이 정해짐, 타입이 한 번 정해져도 변동 가능함
  print(jsonStrToMap.runtimeType);
  print(jsonStrToMap);
  // map --> 반복문 활용을 많이 함  --> 내부적 forEach사용
  jsonStrToMap.forEach((key, value) {
    print("key - ${key}");
    print("value - ${value}");
    print("-----------------");
  });

  // 2단계 - Map형식의 데이터를 Object타입으로 변경
  Todo myTodo1 = Todo.fromjson(jsonStrToMap);
  print(myTodo1);
  print(myTodo1.title);


}

  // 클래스 만들어주기
  class Todo{
  int userId;
  int id;
  String title;
  bool completed;
  
    // 기본 생성자(dart에서는 없어서 만들어 줌)
    // nullable타입이라서 에러남 --> 강제성 - 생성자활용
    Todo(this.userId, this.id, this.title, this.completed);
  
    // 명명된 생성자(Map구조를 넣으면 Todo 오브젝트가 반환되는 코드)
    // 이니셜라이저 : 변수를 초기화 해주는 문법
    Todo.fromjson(Map<String, dynamic> json)
      : userId = json["userId"],
        id = json["id"],
        title = json["title"],
        completed = json["completed"];

  @override //alt + insert 해서 ctrl+shift 모두 선택해서 toString 만들기
  String toString() {
    return '내가 보는 - Todo{userId: $userId, id: $id, title: $title, completed: $completed}';
  }
}
