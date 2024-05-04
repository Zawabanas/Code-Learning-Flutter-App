import 'package:e_learning_code_app/screens/java_introduction_screen.dart';
import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lección 1: Fundamentos de Programación'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Introducción a la Programación',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'En esta lección aprenderás los conceptos básicos de la programación, incluyendo variables, tipos de datos, operadores y estructuras de control.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Contenido de la Lección:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Introducción a la Programación'),
            ),
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Variables y Tipos de Datos'),
            ),
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Operadores Aritméticos'),
            ),
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Estructuras de Control: if-else'),
            ),
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Estructuras de Control: bucles'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Lógica para inscribirse al curso
                 // Navegar a la pantalla Demo al presionar el botón
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JavaIntroductionScreen()),
                );
              },
              child: const Text('Empecemos'),
            ),
          ],
        ),
      ),
    );
  }
}
