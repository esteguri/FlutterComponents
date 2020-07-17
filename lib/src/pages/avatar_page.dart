import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images-na.ssl-images-amazon.com/images/I/51NsPxcvxmL._AC_SX466_.jpg"),
              radius: 20,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text(
                "SL",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.red,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image:
              NetworkImage("https://ugeek.github.io/blog/images-blog/node.png"),
          width: 400,
        ),
      ),
    );
  }
}
