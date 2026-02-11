import 'package:flutter/material.dart';

void main() => runApp(const AppVentatelefonos());

class AppVentatelefonos extends StatelessWidget {
  const AppVentatelefonos({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Empleados(),
    );
  }
}

class Empleados extends StatelessWidget {
  const Empleados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Fondo de la pantalla (opcional, un lila muy tenue)
      backgroundColor: const Color(0xFFF3E5F5),
      appBar: AppBar(
        title: const Text(
          'Venta de teléfonos Lara Baca',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        // Color morado azulado bajito corregido
        backgroundColor: const Color(0xFF7E57C2), 
        leading: IconButton(
          icon: const Icon(Icons.camera_alt, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.red),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.blueGrey),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _crearTarjeta('Marco Arancel', 'Desarrollador Flutter', 'https://raw.githubusercontent.com/sebastianlara0619/Imagenes_Flutter_6J_11-2-2026/refs/heads/main/Empleado%203.jpg'),
          _crearTarjeta('Mauricio De león', 'Diseñador UI/UX', 'https://raw.githubusercontent.com/sebastianlara0619/Imagenes_Flutter_6J_11-2-2026/refs/heads/main/Empleado%201.jpg'),
          _crearTarjeta('Gilberto Rangel ', 'Product Manager', 'https://raw.githubusercontent.com/sebastianlara0619/Imagenes_Flutter_6J_11-2-2026/refs/heads/main/Empleado%202.jpg'),
        ],
      ),
    );
  }

  // Esta función debe estar DENTRO de la clase o como función global fuera de ella
  Widget _crearTarjeta(String nombre, String profesion, String urlImagen) {
    return Card(
      color: const Color.fromARGB(255, 99, 91, 218), // Morado suave para la tarjeta
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(urlImagen),
          radius: 25,
        ),
        title: Text(
          nombre,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text(
          profesion,
          style: const TextStyle(color: Colors.white70),
        ),
        trailing: const Icon(
          Icons.favorite_border,
          color: Colors.white,
        ),
        onTap: () {
        print('Tocaste a $nombre');
        },
      ),
    );
  }
} // Fin clase Empleados