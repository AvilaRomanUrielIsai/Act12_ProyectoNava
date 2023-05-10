import 'package:flutter/material.dart';

class ListItem {
  final String title;
  final String subtitle;
  final String avatarUrl;

  ListItem(this.title, this.subtitle, this.avatarUrl);
}

class PantallaCuatro extends StatelessWidget {
  PantallaCuatro({super.key});
  final items = [
    ListItem('Peñas', 'Teofilo', 'images/avatar.png'),
    ListItem('Ojeda', 'César', 'images/avatar.png'),
    ListItem('Fernández', 'Francisco', 'images/avatar.png'),
    ListItem('Villalobos', 'Alfonso', 'images/avatar.png'),
    ListItem('Galindo', 'Valentina', 'images/avatar.png'),
    ListItem('Gallo', 'Valentina', 'images/avatar.png'),
    ListItem('Nevado', 'Juana', 'images/avatar.png'),
    ListItem('Mora', 'María', 'images/avatar.png'),
    ListItem('Pereira', 'Triana', 'images/avatar.png'),
    ListItem('Paredes', 'Alexia', 'images/avatar.png'),
    ListItem('Landeros', 'Luciana', 'images/avatar.png'),
    ListItem('Bustos', 'Mia', 'images/avatar.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.home, color: Color(0xfff9fd16)),
          tooltip: 'Inicio',
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        title: const Text("Clientes 👥",
            style: TextStyle(color: Color(0xfff9fd16))),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        elevation: 0.00,
        backgroundColor: const Color(0xff01075e),
      ),
      endDrawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/drawer.jpeg"), fit: BoxFit.cover),
              ),
              accountName: Text(
                "Randall Park",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "Blockbuster_admin@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("images/Blockbuster_1.jpg")),
            ),
            ListTile(
              leading: const Icon(
                Icons.people,
              ),
              title: const Text('Cliente'),
              onTap: () {
                Navigator.pushNamed(context, '/T1');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.movie,
              ),
              title: const Text('Pelicula'),
              onTap: () {
                Navigator.pushNamed(context, '/T2');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.local_movies,
              ),
              title: const Text('Serie'),
              onTap: () {
                Navigator.pushNamed(context, '/T3');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.sell,
              ),
              title: const Text('Ventas'),
              onTap: () {
                Navigator.pushNamed(context, '/T4');
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(item.avatarUrl),
            ),
            title: Text(item.title),
            subtitle: Text(item.subtitle),
          );
        },
      ),
    );
    Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
              child: Container(
                width: 80,
                height: 80,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://picsum.photos/seed/178/600',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
              child: Container(
                width: 80,
                height: 80,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://picsum.photos/seed/178/600',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
              child: Container(
                width: 80,
                height: 80,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://picsum.photos/seed/178/600',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
              child: Container(
                width: 80,
                height: 80,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://picsum.photos/seed/178/600',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
              child: Container(
                width: 80,
                height: 80,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://picsum.photos/seed/178/600',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
