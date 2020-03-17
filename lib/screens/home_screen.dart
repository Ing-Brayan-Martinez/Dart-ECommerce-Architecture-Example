import 'package:flutter/material.dart';
import 'package:prueba_flutter/behavior/delegated/home_delegated.dart';
import 'package:prueba_flutter/widgets/drawer/drawer.dart';
import 'package:prueba_flutter/widgets/floating/floating_button.dart';
import 'package:prueba_flutter/widgets/lists/home_list.dart';


class HomeScreen extends StatelessWidget {

  static const routeName = '/';

  HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Sci Fi Space"),
        actions: <Widget>[

        ],
      ),
      body: HomeList(),
      floatingActionButton: FloatingButton(),
      drawer: AppDrawer(delegated: HomeDelegated())
    );
  }
}