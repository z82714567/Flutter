import 'package:http/http.dart' as http; //다른 사람이 만들어 둔거랑 충돌날까봐
import 'dart:convert';
import 'package:dart_future_v1/todo.dart';

main() async{
  // 결과를 콘솔에다가 출력 방법1(동기적)
  var response = await fetchTodo();
  print(response.headers);
  print(response.body);
  print("--------------");

  String body = response.body;
  print(body);

  // 결과를 콘솔에다가 출력 방법2(콜백 메서드)
  //fetchTodo().then((e) => print(e.body));

  // 1
  Map<String, dynamic> fetchTodoMap = json.decode(body);
  fetchTodoMap.forEach((key, value) {
    print("key - ${key}");
    print("value - ${value}");
    print("-----------------");
  });

  // 2
  Todo myTodo2 = Todo.fromjson(fetchTodoMap);
  print(myTodo2);
  print(myTodo2.completed);
  print(myTodo2.id);
}
  // 통신을 하는 함수 만들기
  Future<http.Response> fetchTodo() async{
    const url = 'https://jsonplaceholder.typicode.com/todos/1';
    var response = await http.get(Uri.parse(url));
    //print(response.runtimeType);
    //print("headers : ${response.headers}" );
    //print("body : ${response.body}" );
    return response;
  }

// 2 클래스 만들기