import 'package:e_learning_code_app/screens/variables_y_datos_java.dart';
import 'package:flutter/material.dart';

class JavaIntroductionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teoría de Introducción a Java'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Introducción a Java',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Java es un lenguaje de programación de alto nivel desarrollado por Sun Microsystems en 1995. '
              'Es conocido por su portabilidad, ya que los programas escritos en Java pueden ejecutarse en cualquier plataforma que tenga una máquina virtual Java (JVM).',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Conceptos Fundamentales de Java:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '1. Clases y Objetos: Java es un lenguaje orientado a objetos, lo que significa que todo en Java es un objeto.',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              '2. Tipos de Datos: Java tiene tipos de datos primitivos, como int, float, double, boolean, etc., y tipos de datos de referencia, como String.',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              '3. Métodos: Los métodos en Java son bloques de código que realizan una tarea específica y se pueden reutilizar en diferentes partes de un programa.',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              '4. Estructuras de Control: Java admite estructuras de control como if-else, bucles for y while, y switch-case.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Ejercicios:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            ExerciseCard(
              question: '¿Cuál es el tipo de dato utilizado para almacenar números enteros en Java?',
              options: ['int', 'float', 'String', 'boolean'],
              correctAnswerIndex: 0,
            ),
            ExerciseCard(
              question: '¿Cuál es la palabra clave utilizada para definir una clase en Java?',
              options: ['class', 'void', 'new', 'this'],
              correctAnswerIndex: 0,
            ),
            ExerciseCard(
              question: '¿Cuál es el operador utilizado para comparar dos valores en Java?',
              options: ['==', '=', '!=', '<>'],
              correctAnswerIndex: 0,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla de Variables y Tipos de Datos
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VariablesTypesScreen()),
                );
              },
              child: Text('Ir a Variables y Tipos de Datos'),
            ),
          ],
        ),
      ),
    );
  }
}

