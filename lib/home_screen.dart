import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  final String userEmail;
  final String nombre;
  final String primerApellido;
  final String segundoApellido;
  final String telefono;
  final String edad;

  LandingPage({
    Key? key,
    required this.userEmail,
    required this.nombre,
    required this.primerApellido,
    required this.segundoApellido,
    required this.telefono,
    required this.edad,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Landing Page",
          style: TextStyle(color: Colors.yellowAccent),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: Text(
              "Landing Page",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Welcome $userEmail", // Aquí accedemos directamente a userEmail
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                    ),
                  ),
                  Text("Nombre(s): $nombre"),
                  Text("Primer Apellido: $primerApellido"),
                  Text("Segundo Apellido: $segundoApellido"),
                  Text("Tel.: $telefono"),
                  Text("Edad: $edad"),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Logout"),
          ),
        ],
      ),
    );
  }
}
