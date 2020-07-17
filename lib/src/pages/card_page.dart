import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.radio_button_checked,
              size: 40,
              color: Colors.blue,
            ),
            title: Text("Card Title"),
            subtitle: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed arcu ligula, fermentum sed feugiat vel, varius eget mauris. Quisque suscipit nec mauris non rhoncus."),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text("Cancelar")),
              FlatButton(onPressed: () {}, child: Text("Aceptar")),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              fit: BoxFit.cover,
              height: 300,
              image: NetworkImage(
                  "https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg")),
          Container(
            padding: EdgeInsets.all(12.0),
            child: Text("Card Image Tittle"),
          )
        ],
      ),
    );
  }
}
