import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text('ShopApp'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //Header
            new UserAccountsDrawerHeader(
                accountName: Text('Ashish'),
                accountEmail: Text('ashish@gmail.com'),
                currentAccountPicture: GestureDetector(child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white,),
                ),),
                decoration:  new BoxDecoration(
                  color:Colors.red
                ),
                ),
                //body
                InkWell(
                  onTap: (){},
                  child:ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home,color:Colors.red),
                  )
                ),
                InkWell(
                  onTap: (){},
                  child:ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person,color:Colors.red),
                  )
                ),
                InkWell(
                  onTap: (){},
                  child:ListTile(
                title: Text('My orders'),
                leading: Icon(Icons.shopping_basket,color:Colors.red),
                  )
                ),
                InkWell(
                  onTap: (){},
                  child:ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard,color:Colors.red),
                  )
                ),
                InkWell(
                  onTap: (){},
                  child:ListTile(
                title: Text('Fav'),
                leading: Icon(Icons.favorite,color:Colors.red),
                  )
                ),

              Divider(),
              InkWell(
                  onTap: (){},
                  child:ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,color:Colors.black),
                  )
                ),
                InkWell(
                  onTap: (){},
                  child:ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.blue,),
                  )
                ),
          ],
        ),
      ),
    );
  }
}
