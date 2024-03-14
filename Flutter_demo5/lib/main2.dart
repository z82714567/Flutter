void main() {
  // 반복문
  var list = [1, 2, 3, 4];
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }

  print('-------------------------------------------');

  // list에서 제공하는 map()함수 - 반복되는 값을 하나씩 변형하기 위해 사용

  var chobab = ['새우초밥', '광어초밥', '연어초밥'];
  var chobabChange = chobab.map((i) => '간장_' + i);
  print(chobabChange);
  print(chobabChange.runtimeType);
  print(chobabChange.toList());

  print('-------------------------------------------');

  // list에서 제공하는 where연산자 - 반복되는 값에서 필요없는 필요없는 값을 필터링하거나 필요한 값을 찾을 때 사용
  var chobabChange2 = chobab.where((i) => i != '광어초밥'); //필터링
  print(chobabChange2);
  print(chobabChange2.toList());
}
