// dart에서 기본적으로 제공하는 라이브러리를 import합니다.
import 'dart:math';

// 컬렉션
void main() {
  // List
  List<int> nums = [1, 2, 3, 4, 5];
  print(nums[0]);
  print(nums[1]);
  print(nums[2]);
  print(nums[3]);
  print(nums[4]);

  print('-----------------------');

  // Map의 초기화 리터럴은 중괄호{}.
  Map<String, dynamic> user = {
    'id': 1,
    'username': "cos",
  };
  // key연산은 인덱스 연산자를 활용.
  print(user['id']);
  print(user['username']);

  print('-----------------------');

  // Set : 중복허용x, 순서x, 중괄호 사용
  Set<int> lotto = {};
  Random r = Random();
  lotto.add(r.nextInt(45) + 1); //로또번호 1~45까지니까 +1 해줌
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);

  List<int> lottoList = lotto.toList();

  // 반드시 6개의 값이 나오게 코딩 --> while문 사용
  while (true) {
    if (lottoList.length == 6) break;
  }

  print(lotto);
  print(lotto.runtimeType);
  // Set --> List 변경
  print(lotto.toList());

  print('-----------------------');

  //List<int> lottoList = lotto.toList();
  lottoList.sort();
  print(lottoList); // 오름차순으로 정렬됨
}
