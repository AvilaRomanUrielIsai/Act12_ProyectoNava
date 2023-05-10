import 'package:flutter/material.dart';
import 'package:avila/inicio.dart';
import 'package:avila/pag1.dart';
import 'package:avila/pag2.dart';
import 'package:avila/pag3.dart';
import 'package:avila/pag4.dart';
import 'package:avila/t1.dart';
import 'package:avila/t2.dart';
import 'package:avila/t3.dart';
import 'package:avila/t4.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Named Routes Demo',
    theme: ThemeData(
      primaryColor: const Color(0xff01075e),
    ),
    // Inicie la aplicación con la ruta con nombre. En nuestro caso, la aplicación comenzará
    // en el Widget FirstScreen
    initialRoute: '/',
    routes: {
      // Cuando naveguemos hacia la ruta "/", crearemos el Widget FirstScreen
      '/': (context) => const PantallaInicio(),
      // Cuando naveguemos hacia la ruta "/second", crearemos el Widget SecondScreen
      '/P1': (context) => const PantallaUno(),
      '/P2': (context) => const PantallaDos(),
      '/P3': (context) => const PantallaTres(),
      '/P4': (context) => PantallaCuatro(),
      '/T1': (context) => const TabUno(),
      '/T2': (context) => const TabDos(),
      '/T3': (context) => const TabTres(),
      '/T4': (context) => const TabCuatro(),
    },
  ));
}
