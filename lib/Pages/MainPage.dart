import 'package:flutter/material.dart';

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int _bottomNum = 0;
  //int pageNum = 0;
  PageController? _pageController;

  @override
  void initState() {
    this._pageController = new PageController();
    super.initState();
  }

  @override
  void dispose() {
    this._pageController?.dispose();
    super.dispose(
    );
  }

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
            onPressed: (){},
            icon: Icon(Icons.notifications),
          )
        ],
      ),
      body: PageView.builder(
        controller: this._pageController,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index){
          return Scaffold(
            body: Text(index.toString()),
          );
        }
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        onTap: (index){
          this._pageController?.jumpToPage(index);
          setState(() {
            this._bottomNum = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: this._bottomNum,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_compact_rounded),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "",
          )
        ],
      ),
    );
  }
}
