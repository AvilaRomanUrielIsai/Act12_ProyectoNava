import 'package:flutter/material.dart';

class PantallaDos extends StatelessWidget {
  const PantallaDos({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Randall Park',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Gerente de Blockbuster',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          const Icon(
            Icons.star,
            color: Color(0xfff9fd16),
          ),
          const Text('90'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'Numero'),
        _buildButtonColumn(color, Icons.description, 'Redes'),
        _buildButtonColumn(color, Icons.share, 'Compartir'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Como gerente principal de la oficina de Blockbuster, me comprometo a servir de manera rápida, eficaz y amena a todos nuestros fieles clientes y empleados, asi como recibir con los brazos abiertos a todos aquellos que recién llegan.',
        softWrap: true,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.home, color: Color(0xfff9fd16)),
          tooltip: 'Inicio',
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        title: const Text("Gerente 👤",
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
      body: ListView(
        children: [
          Image.asset(
            'images/Blockbuster_1.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
