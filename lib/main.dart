import 'package:flutter/material.dart';

void main(){runApp(new App());}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List<String> items = [
    "https://images.unsplash.com/photo-1593642634402-b0eb5e2eebc9?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60",
    "https://images.unsplash.com/photo-1626193759855-4f03fc744287?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyN3x8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60",
    "https://images.unsplash.com/photo-1626196874981-40349a369168?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1Mnx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Logo"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: (){},
          )
        ],
      ),
      body: Container(
        //width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            this._mainWidget(context)
          ],
        ),
      ),
    );
  }



  Widget _mainWidget(BuildContext context){
    return Container(
      width: 300,
      height: 500,
      child: Column(
        children: [
          Container(
            //color: Colors.indigoAccent,
            alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 20.0, top: 25.0),
              child: Text("Title",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold
                ),
             )
          ),
          Container(
            //color: Colors.indigo,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(onPressed: (){}, child: Text("select"),),
                TextButton(onPressed: (){}, child: Text("select"),),
                TextButton(onPressed: (){}, child: Text("select"),),
              ],
            ),
          ),
          Container(
            //margin: EdgeInsets.all(20.0),
            child: GridView.builder(
              itemCount: this.items.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                crossAxisSpacing: 50.0,
                mainAxisSpacing: 50.0,
              ),
              //scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) => Container(
                //color: Colors.grey,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(this.items[index])
                        )
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text("Item")
                    )
                  ],
                ),
              )
            )
          )
        ]
      ),
    );
  }
}



