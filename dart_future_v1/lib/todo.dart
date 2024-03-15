class Todo{  // dto설계 시 ? nullable타입으로 하기 ? 왜? null값 들어올 수 있으니까
  int? userId;
  int? id;
  String? title;
  bool? completed;

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
