import 'package:flutter/material.dart';
import 'package:flutter_components/src/pages/avatar_page.dart';
import 'package:flutter_components/src/providers/menu_provider.dart';
import 'package:flutter_components/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, context) {
    return data.map((menu) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(menu["texto"]),
            leading: getIcon(menu['icon']),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.pushNamed(context, "/" + menu['ruta']);
            },
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
