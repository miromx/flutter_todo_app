import 'package:flutter/material.dart';

import 'home_screen.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {

  var _categoryNameController = TextEditingController();
  var _categoryDescriptionController = TextEditingController();

  _showFormDialog(BuildContext context){
    return showDialog(context: context, barrierDismissible: true, builder: (params) {
      return AlertDialog(
        actions: <Widget>[
          FlatButton(
            onPressed: ()=>Navigator.pop(context),
            color: Colors.red,
            child: Text('Cancel'),
          ),
          FlatButton(
            onPressed: (){
              print('category ${_categoryNameController.text}');
              print('description ${_categoryDescriptionController.text}');
            },
            color: Colors.green[800],
            child: Text('Save'),
          ),
        ],
        title: Text('Categories form'),
        content: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextField(
                controller: _categoryNameController,
                  decoration: InputDecoration(
                  hintText: 'write a category',
                  labelText: 'Category'
                ),
              ),
              TextField(
                controller: _categoryDescriptionController,
                    decoration: InputDecoration(
                    hintText: 'write a description',
                    labelText: 'Description'
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: RaisedButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen())),
          elevation: 0.0, //no border ...
          child: Icon(Icons.arrow_back, color: Colors.white,),
          color: Colors.blue,
        ),
        title: Text('Categories'),
      ),
      body: Center(child: Text('some')),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            _showFormDialog(context);
          },
          child: Icon(Icons.add),
      ),
    );
  }
}
