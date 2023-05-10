import 'package:flutter/material.dart';

class PantallaTres extends StatefulWidget {
  const PantallaTres({super.key});

  @override
  State<PantallaTres> createState() => _PantallaTresState();
}

class _PantallaTresState extends State<PantallaTres> {
  List<Image> images = [
    Image.network(
      "https://raw.githubusercontent.com/AaronMotaR/img_proyecto/main/uvas.jpg",
    ),
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
        title: const Text("Catálogo 🎬",
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
      body: Center(
          child: GridView.extent(
        primary: false,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        maxCrossAxisExtent: 200.0,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: ListView(
              children: [
                Image.asset(
                  'images/Hannibal.jpg',
                ),
                const Text(
                  'Hannibal',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: ListView(
              children: [
                Image.asset(
                  'images/atlanta.jpg',
                ),
                const Text(
                  'Atlanta',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: ListView(
              children: [
                Image.asset(
                  'images/juego_de.jpg',
                ),
                const Text(
                  'Juego de Tronos',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: ListView(
              children: [
                Image.asset(
                  'images/Exorcista.jpg',
                ),
                const Text(
                  'El Exorcista',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: ListView(
              children: [
                Image.asset(
                  'images/John.jpg',
                ),
                const Text(
                  'Otro Día Para Matar',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: ListView(
              children: [
                Image.asset(
                  'images/la-la-land.jpeg',
                ),
                const Text(
                  'La La Land',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: ListView(
              children: [
                Image.asset(
                  'images/Halo.jpg',
                ),
                const Text(
                  'Halo',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: ListView(
              children: [
                Image.asset(
                  'images/Rick_y_Morty.jpg',
                ),
                const Text(
                  'Rick y Morty',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: ListView(
              children: [
                Image.asset(
                  'images/RRR.jpg',
                ),
                const Text(
                  'RRR',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: ListView(
              children: [
                Image.asset(
                  'images/Que_pasó.jpg',
                ),
                const Text(
                  '¿Qué Pasó Ayer?',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
