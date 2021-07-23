import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15.0, top: 20.0, bottom: 15.0),
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Title",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                    ),
                  ),
                ),
                Container()
              ],
            ),
          ),
          Container(),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
