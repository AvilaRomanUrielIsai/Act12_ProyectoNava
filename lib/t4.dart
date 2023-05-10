import 'package:flutter/material.dart';

class TabCuatro extends StatelessWidget {
  const TabCuatro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xfff9fd16)),
          tooltip: 'Regresar',
          onPressed: () {
            Navigator.pushNamed(context, '/P2');
          },
        ),
        title: const Text("Ventas", style: TextStyle(color: Color(0xfff9fd16))),
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
          Container(
              padding: const EdgeInsets.all(20),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese su Id",
                    labelText: "Id_Cliente",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff01075e))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(
                      Icons.numbers,
                      color: Color(0xff01075e),
                    )),
              )),
          Container(
              padding: const EdgeInsets.all(20),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese su número de tarjeta",
                    labelText: "Número de tarjeta",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff01075e))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(
                      Icons.credit_card,
                      color: Color(0xff01075e),
                    )),
              )),
          Container(
              padding: const EdgeInsets.all(20),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese la fecha de vencimiento",
                    labelText: "Fecha de Vencimiento",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff01075e))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(
                      Icons.date_range,
                      color: Color(0xff01075e),
                    )),
              )),
          Container(
              padding: const EdgeInsets.all(20),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese su CVV",
                    labelText: "CVV",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff01075e))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(
                      Icons.numbers,
                      color: Color(0xff01075e),
                    )),
              )),
          Container(
              padding: const EdgeInsets.all(20),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese la cuenta de la empresa",
                    labelText: "9791 5538 25 9987095746",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff01075e))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(
                      Icons.access_time,
                      color: Color(0xff01075e),
                    )),
              )),
          Container(
              padding: const EdgeInsets.all(20),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "Ingrese el Id de la película o Serie",
                    labelText: "Id_Contenido",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff01075e))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    suffixIcon: Icon(
                      Icons.card_travel,
                      color: Color(0xff01075e),
                    )),
              )),
          TextButton(
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('!Felicidades!'),
                content: const Text(
                    'Su informacion se ha enviado con exito; En caso de alguna duda, Contactenos: 19163850525,'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/T4'),
                    child: const Text('Cancelar'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/P2'),
                    child: const Text('Ok'),
                  ),
                ],
              ),
            ),
            child: const Text('Enviar Informacion'),
          ),
        ],
      )),
    );
  }
}
