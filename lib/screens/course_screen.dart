import 'package:e_learning_code_app/screens/demo.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del curso'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Encabezado del curso
            const Text(
              'Nombre del Curso',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Descripción del Curso...',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 16.0),
            // Contenido del curso con menú desplegable para cada tema
            const Text(
              'Contenido del Curso',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            // Lista de ExpansionTiles para los temas del curso
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero, // Elimina el margen interno del ListView
                itemCount: 5, // Número de temas del curso
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: index.isEven ? Colors.blue[200] : Colors.deepPurple[300], // Cambia el color del contenedor según si es par o impar
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(color: Colors.transparent), // Establece el color del borde como transparente
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 4.0),
                    child: ExpansionTile(
                      title: Text('Tema ${index + 1}'),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'Descripción del Tema ${index + 1}',
                            style: const TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            // Botón de inscripción al curso
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Lógica para inscribirse al curso
                 // Navegar a la pantalla Demo al presionar el botón
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Demo()),
                );
              },
              child: const Text('Iniciar Demo'),
            ),
          ],
        ),
      ),
    );
  }
}
