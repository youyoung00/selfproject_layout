import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          this._topBanner(),
          Container(),
          Container(),
          Container()
        ],
      ),
    );
  }

  Widget _topBanner(){
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20,top: 30,bottom: 30),
            alignment: Alignment.bottomLeft,
            child: Text("Title",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
