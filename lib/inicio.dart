import 'package:flutter/material.dart';

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

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
        title: const Text("Blockbuster",
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
          child: ListView(
        children: [
          const Image(
            image: AssetImage(
              'images/inicio.png',
            ),
          ),
          Container(
            height: 320,
            width: 200,
            margin: const EdgeInsets.all(25),
            child: Card(
              child: const Text(
                textAlign: TextAlign.center,
                'Blockbuster LLC, conocida como Blockbuster Video, fue una franquicia estadounidense de videoclubes, especializada en alquiler de cine y videojuegos a través de tiendas físicas, servicios por correo y video bajo demanda. Fue fundada en 1985 por David Cook, tuvo un gran crecimiento en los años 1990, y tras ser adquirida por Viacom llegó a controlar el 25% de la cuota de mercado mundial de videoclubes. En 2004 contaba con más de 9000 establecimientos a nivel mundial.',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff000000),
                ),
              ),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                      const BorderSide(color: Color(0xff1671ea), width: 1)),
              elevation: 20,
              shadowColor: const Color(0xff1671ea),
              margin: const EdgeInsets.all(20),
            ),
          ),
          const Image(
            image: AssetImage(
              'gifs/noticias.gif',
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff1671ea), width: 3)),
            child: ElevatedButton(
              child: const Text('Noticias 📄'),
              onPressed: () {
                // Navega a la segunda pantalla usando una ruta con nombre
                Navigator.pushNamed(context, '/P1');
              },
            ),
          ),
          const Image(
            image: AssetImage(
              'gifs/gerente.gif',
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff1671ea), width: 3)),
            child: ElevatedButton(
              child: const Text('Gerente 👤'),
              onPressed: () {
                // Navega a la segunda pantalla usando una ruta con nombre
                Navigator.pushNamed(context, '/P2');
              },
            ),
          ),
          const Image(
            image: AssetImage(
              'gifs/pelicula.gif',
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff1671ea), width: 3)),
            child: ElevatedButton(
              child: const Text('Catalogo 🎬'),
              onPressed: () {
                // Navega a la segunda pantalla usando una ruta con nombre
                Navigator.pushNamed(context, '/P3');
              },
            ),
          ),
          const Image(
            image: AssetImage(
              'gifs/clientes.gif',
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xff1671ea), width: 3)),
            child: ElevatedButton(
              child: const Text('Clientes 👥'),
              onPressed: () {
                // Navega a la segunda pantalla usando una ruta con nombre
                Navigator.pushNamed(context, '/P4');
              },
            ),
          ),
        ],
      )),
    );
  }
}
