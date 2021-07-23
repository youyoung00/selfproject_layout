import 'package:flutter/material.dart';
import 'package:selfproject_layout/Pages/views/homeView.dart';
import 'package:selfproject_layout/Pages/Views/SearchView.dart';
import 'package:selfproject_layout/Pages/views/settingView.dart';
import 'package:selfproject_layout/Pages/views/thrView.dart';

class Main extends StatefulWidget {

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  // 로직적인 부분은 클래스내부 상단에 위치
  // 위젯을 반환하는 함수는 클래스 내부 하단에 위치
  int bottomIndex = 0;
  PageController? _pageController;

  List<Widget> _views = [new HomeView(),new SearchView(), new ThrView(), new SettingView()];

  @override
  void initState() {
    this._pageController = new PageController();//페이지 이동2
    super.initState();
  }

  @override
  void dispose() {
    this._pageController?.dispose();
    super.dispose();
  }
  // 이 페이지가 사라질 때 시스템에서도 지우는 역할(자동로그인의 텍스트에디팅컨트롤러와 동일.)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Logo"),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: (){},
          )
        ],
      ),
      body: new PageView.builder(
        onPageChanged: (int i){
          // 하단의 아이템과 View의 갯수와 순서가 일치할 때 사용할 수 있는 로직.

          setState(() {
            this.bottomIndex = i;
          });
          return;
        },
        //physics: NeverScrollableScrollPhysics(),// 스크롤로 뷰를 이동하지 못하게 막는 역
        controller: this._pageController,//페이지 이동 1
        itemCount: this._views.length, //아이템과 동일한지 확인 필요.
        itemBuilder: (BuildContext context, int index){
          return this._views[index];
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.bottomIndex,
        onTap: (int index){
          this._pageController?.jumpToPage(index);//페이지 이동3
          setState(() {
            this.bottomIndex = index;
          });
        },
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_compact),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: ""
          ),
        ],
      ),
    );
  }
}