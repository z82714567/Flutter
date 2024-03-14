import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// StatelessWidget 상태 변경이 없는 위젯
class ProfileTab extends StatefulWidget {
  // 상태 변경 가능한 위젯
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
} // end of StatefulWidget

// 애니메이션 효과 구현 처리 - 미리 만들어 둠
class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  // _변수 : private 변수
  TabController? _tabController;

  // initState메서드는 인스턴스화 될 때 단 한 번만 호출 됨
  // 즉 필요한 초기값이 있다면 initState에서 구현 가능
  // 단 랜더링 처리는 (화면에 그림을 그리는 동작은 지양함)
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  // 화면을 그려주는 메서드 - flutter 선언형 UI
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TabBar -- 그림1,2,3...
        _buildTabBar(),
        Expanded(child: _buildTabBarView()), // 탭의 가로 행
        // TabBarView -- 그림에 맞는 위젯 랜더링
        // 선택된 탭에 해당화는 화면 표시
      ],
    );
  }

  Widget _buildTabBar() {
    return TabBar(controller: _tabController, tabs: [
      Tab(icon: Icon(Icons.directions_train)),
      Tab(icon: Icon(Icons.directions_car)),
    ]);
  }

  Widget _buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: [
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 3개 게시물
            mainAxisSpacing: 10, // 공간
            crossAxisSpacing: 10, // 공간
          ),
          itemBuilder: (context, index) {
            return Image.network(
                "https://picsum.photos/id/${index + 1}/200/200");
          },
          itemCount: 42, // 화면에 보이는 것 보다 많음 -- 자동 스크롤
        ),
        Container(color: Colors.redAccent),
      ],
    );
  }
} // end of State
