import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.home, color: Color(0xfff9fd16)),
              tooltip: 'Inicio',
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            title: const Text("Noticias 📄",
                style: TextStyle(color: Color(0xfff9fd16))),
            titleSpacing: 00.0,
            centerTitle: true,
            toolbarHeight: 60.2,
            toolbarOpacity: 0.8,
            elevation: 0.00,
            backgroundColor: const Color(0xff01075e),
            bottom: const TabBar(
              tabs: [
                Tab(
                    text: "Ofertas",
                    icon: Icon(Icons.sell, color: Color(0xfff9fd16))),
                Tab(
                    text: "Estrenos",
                    icon: Icon(Icons.movie, color: Color(0xfff9fd16))),
                Tab(
                    text: "Tarjeta",
                    icon:
                        Icon(Icons.card_membership, color: Color(0xfff9fd16))),
                Tab(
                    text: "Horarios",
                    icon: Icon(Icons.lock_clock, color: Color(0xfff9fd16))),
              ],
            ),
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
                        image: AssetImage("images/drawer.jpeg"),
                        fit: BoxFit.cover),
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
          body: TabBarView(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'images/ofertas.jpg',
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Blockbuster siempre a la vanguardia de los mejores estrenos del 7to arte con los mejores precios de todo el mercado.',
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'images/pelicula.jpg',
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      '¿No sabes qué elegir? Se entiende, pues Blockbuster tiene una cantidad inmensa de peliculas y series con las cuales puedes disponer de un solo click 😱.',
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ],
                ),
              ),
              // Contenido para la primera pestaña
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'images/membresia.jpg',
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Blockbuster ha creado una nueva manera para que disfrutes de nuestro contenido llevandote algo a cambio... ¡La Cuenta de Blockbuster Card! 🙌',
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'images/horario.jpg',
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Blockbuster abierto de 8 A.M. hasta las 9 P.M de Lunes a Domingo',
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
