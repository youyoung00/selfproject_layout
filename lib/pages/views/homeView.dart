import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> _selectsNum = ["select0", "select1", "select2"];
  int _selectIndex = 0;
  List<String> _imgs = [
    "https://cdn.pixabay.com/photo/2021/04/06/21/08/crown-anemone-6157488__340.jpg",
    "https://cdn.pixabay.com/photo/2021/07/17/23/01/dog-6474269__340.jpg",
    "https://cdn.pixabay.com/photo/2021/07/18/17/11/rufous-6476117__340.jpg"
  ];

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
          Container(
            //color: Colors.deepOrange,
            child: Row(
              //map, foreach 요소 반복 사용시 자주 쓰임.
              children: this._selectsNum.map<Widget>(
                (String e) => Expanded(
                  child: TextButton(
                    onPressed: (){
                      //this.selectIndex = this._selectsNum.indexOf(e);
                      print(this._selectsNum.indexOf(e));
                      setState(() {
                        this._selectIndex = this._selectsNum.indexOf(e);
                      });
                    },
                    child: Text(
                      e,
                      style: TextStyle(
                        color: this._selectIndex == this._selectsNum.indexOf(e)
                          ? Colors.red // 맞으면
                          : Colors.grey // 틀리
                      ),
                    )
                  ),
                )
              ).toList(),
            ),
          ),
          Container(
            //color: Colors.indigo,
            height: 300,
            child: PageView.builder(
              itemCount: this._imgs.length,
              itemBuilder: (BuildContext context, int i){
                return Container(
                  //color: Colors.indigoAccent, // 크기 체크
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          //color: Colors.lightGreen,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(this._imgs[i])
                            )
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.all(20.0),
                        child: Text("item$i"),
                      )
                    ],
                  )
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
