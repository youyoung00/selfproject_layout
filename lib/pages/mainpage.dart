import 'package:flutter/material.dart';

class Main extends StatefulWidget {

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int bottomIndex = 0;

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
        itemCount: 4,
        itemBuilder: (BuildContext context, int index){
          return Container(
            child: Text(index.toString()),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.bottomIndex,
        onTap: (int index){
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