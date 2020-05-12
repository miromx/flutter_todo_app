import 'package:flutter/material.dart';
import 'package:fluttertodolistsqfliteapp/screens/categories_screen.dart';
import 'package:fluttertodolistsqfliteapp/screens/home_screen.dart';

class DrawerNavigation extends StatefulWidget {
  @override
  _DrawerNavigationState createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://avatars0.githubusercontent.com/u/40739539?s=460&u=96faa5067a4aa7251efe7f1f0ad90aeb745bee70&v=4'),
              ),
                accountName: Text('user'),
                accountEmail: Text('user@mail.com'),
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context)=>HomeScreen())),
            ),
            ListTile(
              leading: Icon(Icons.view_list),
              title: Text('Categories'),
              onTap: ()=> Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context)=>CategoriesScreen())),
            ),
          ],
        ),
      ),
    );
  }
}
