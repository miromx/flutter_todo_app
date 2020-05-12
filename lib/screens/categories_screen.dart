import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: RaisedButton(onPressed: (){},
          elevation: 0.0, //no border ...
          child: Icon(Icons.arrow_back),
          color: Colors.blue,
        ),
        title: Text('Categories'),
      ),
      body: Center(child: Text('some')),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
      ),
    );
  }
}
