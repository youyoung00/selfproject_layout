import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  dynamic imgIndex = "select";
  bool _selCheck1 = true;
  bool _selCheck2 = true;
  bool _selCheck3 = true;
  List<String> _topBannerItems = [
    "https://images.unsplash.com/photo-1626931553491-55e7b0453e27?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyNXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1606787619248-f301830a5a57?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwzN3x8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height-kBottomNavigationBarHeight,
      child: Column(
        children: [
          this._topBanner(context),
          Container(),
          Container(),
          Container(),
        ],
      ),
    );
  }

  Widget _topBanner(BuildContext context){

    return SingleChildScrollView(
      child: Container(
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              //color: Colors.brown,
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          child: Text(
                            this.imgIndex.toString(),
                            style: TextStyle(
                              color: this._selCheck1 ? Colors.grey : Colors.red
                            ),
                          ),
                          onPressed: (){
                            setState(() {
                              this._selCheck1 = !this._selCheck1;

                            });
                          },
                        ),
                        TextButton(
                          child: Text(
                            "select",
                            style: TextStyle(
                                color: this._selCheck2 ? Colors.grey : Colors.red
                            ),
                          ),
                          onPressed: (){
                            setState(() {
                              this._selCheck2 = !this._selCheck2;
                            });
                          },
                        ),
                        TextButton(
                          child: Text(
                            "select",
                            style: TextStyle(
                                color: this._selCheck3 ? Colors.grey : Colors.red
                            ),
                          ),
                          onPressed: (){
                            setState(() {
                              this._selCheck3 = !this._selCheck3;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      //width: MediaQuery.of(context).size.width,
                      //height: 200,
                      child: PageView.builder(
                        itemCount: this._topBannerItems.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) => Container(
                          margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 0.0, top: 0.0),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(this._topBannerItems[index])
                            )
                          ),
                        )
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
