import 'package:flutter/material.dart';

//appBar
//drawer
//userAccountsDrawerHeader
//ListTile

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("GitHub Perfil"),
        ),
        drawer: const Drawer(
          child: Column(
            children: [
             
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('../images/cat.jpg'),
                ),
                accountName: Text("Gabriel Guedes Villela Crispim"), 
                accountEmail: Text("gabriel@github.com")
              ),
              ListTile(
                title: Row(
                  children:[
                    Icon(Icons.person),
                    SizedBox(width: 20,),
                    Text("Perfil"),
                  ]
                ),
              ),
              ListTile(
                title: Row(
                  children:[
                    Icon(Icons.book),
                    SizedBox(width: 20,),
                    Text("Repositórios"),
                  ]
                ),
              ),
              ListTile(
                title: Row(
                  children:[
                    Icon(Icons.star),
                    SizedBox(width: 20,),
                    Text("Favoritos"),
                  ]
                ),
              ),
            ],
          )
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage('../images/cat.jpg'),
            ),
            Text(
              "Gabriel Guedes Villela Crispim",
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "gabguedes",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.map),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Brazil, São Paulo, SP"
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "gabriel@github.com"
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.group),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "32  ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "seguidores",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "45  ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "seguindo",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),

          ],
        ),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
          ),
      ),
    );
  }
}
