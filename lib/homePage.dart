import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> Containers = [
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.purple,
    ),
    Container(
      color: Colors.yellow,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('OneApp'),
          centerTitle: true,

        

          actions: [
            IconButton(
              icon: Icon(Icons.notifications_none),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],

          // backgroundColor: Colors.orange,
          elevation: 7, //boxshadom
          //titleSpacing: , add space no title/lado-left

          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple[400], Colors.red],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
          ),

          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.star), text: 'Feed'),
              Tab(icon: Icon(Icons.face), text: 'Sobre'),
              Tab(icon: Icon(Icons.source), text: 'Arquivos'),
            ],
          ),
        ),
         drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("iago@mail.com"),
              accountName: Text("Iago"),
              currentAccountPicture: CircleAvatar(
                child: IconButton(
              icon: Icon(Icons.notifications_none),
              onPressed: () {},
            ),
              ),

            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Minha conta"),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/menu');    
                //Navegar para outra página
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text("Meus exercícios"),
              onTap: () {
                Navigator.pop(context);
                //Navegar para outra página

              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favoritos"),
              onTap: () {
                Navigator.pop(context);
                //Navegar para outra página
              },
            ),
          ],
        ),
      ),
        body: TabBarView(
          children: Containers,
        ),
      ),
    );
  }
}
