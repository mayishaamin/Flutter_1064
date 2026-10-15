import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
   static const Color mainColor = Color(0xFF00695C);
   static const Color headerColor = Color(0xFF004D40);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage 64B"),
        backgroundColor:  headerColor,    
        foregroundColor: Colors.white,
        // leading: Icon(Icons.home),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Mayisha"),
              accountEmail: Text("mayisha013@example.com"),
            ),

            ListTile(
              leading: Icon(Icons.home),
              hoverColor:Colors.teal.shade100,
              title: Text("Homepage"),
              onTap: () {},
            ),

            Divider(),

            ListTile(
              leading: Icon(Icons.settings),
              hoverColor: Colors.teal.shade100,
              title: Text("Settings"),
              onTap: () {},
            ),

            Divider(),

            Spacer(),

            ListTile(
              leading: Icon(Icons.person),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
              hoverColor: Colors.teal.shade100,
              title: InkWell(child: Text("Profile"), onTap: () {}),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor:headerColor,   
        foregroundColor: Colors.white,
        hoverColor: Colors.amber,
        tooltip: "Write",
        shape: CircleBorder(),
        child: Icon(Icons.add),
      ),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                side: BorderSide(),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shadowColor: Colors.amber,
                elevation: 10,
                fixedSize: Size(100, 50),
              ),
              child: Text("Blue"),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
            child: Text("Green"),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.pink,
              foregroundColor: Colors.white,
            ),
            child: Text("Pink"),
          ),
        ],
      ),
    );
  }
}