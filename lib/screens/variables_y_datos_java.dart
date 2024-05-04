import 'package:flutter/material.dart';

class VariablesTypesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teoría de Variables y Tipos de Datos en Java'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Variables y Tipos de Datos en Java',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'En Java, una variable es un espacio de almacenamiento que puede contener datos. '
              'Los tipos de datos en Java se dividen en dos categorías: tipos de datos primitivos y tipos de datos de referencia.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Tipos de Datos Primitivos:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '- byte: Entero de 8 bits con signo.',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              '- short: Entero de 16 bits con signo.',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              '- int: Entero de 32 bits con signo.',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              '- long: Entero de 64 bits con signo.',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              '- float: Punto flotante de 32 bits.',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              '- double: Punto flotante de 64 bits.',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              '- boolean: Valor booleano (true o false).',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              '- char: Carácter Unicode de 16 bits.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Tipos de Datos de Referencia:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Los tipos de datos de referencia en Java incluyen clases, interfaces y arreglos.',
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
              question: '¿Cuál es el tipo de dato utilizado para números enteros en Java?',
              options: ['byte', 'double', 'boolean', 'char'],
              correctAnswerIndex: 0,
            ),
            ExerciseCard(
              question: '¿Cuál es el tamaño del tipo de dato int en Java?',
              options: ['8 bits', '16 bits', '32 bits', '64 bits'],
              correctAnswerIndex: 2,
            ),
            ExerciseCard(
              question: '¿Cuál es el tipo de dato para almacenar texto en Java?',
              options: ['string', 'char', 'text', 'double'],
              correctAnswerIndex: 1,
            ),
            ExerciseCard(
              question: '¿Cuál es el tipo de dato para valores verdadero/falso en Java?',
              options: ['int', 'float', 'boolean', 'double'],
              correctAnswerIndex: 2,
            ),
            ExerciseCard(
              question: '¿Cuál es el tipo de dato utilizado para números con decimales en Java?',
              options: ['float', 'boolean', 'int', 'double'],
              correctAnswerIndex: 3,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Cambiar de pantalla (puedes ajustar esto según tus necesidades)
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => AnotherScreen()),
                );
              },
              child: Text('Cambiar de Pantalla'),
            ),
          ],
        ),
      ),
    );
  }
}

class ExerciseCard extends StatefulWidget {
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  const ExerciseCard({
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
  });

  @override
  _ExerciseCardState createState() => _ExerciseCardState();
}

class _ExerciseCardState extends State<ExerciseCard> {
  int? selectedAnswerIndex;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              widget.question,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(
                widget.options.length,
                (index) => RadioListTile<int>(
                  title: Text(widget.options[index]),
                  value: index,
                  groupValue: selectedAnswerIndex,
                  onChanged: (value) {
                    setState(() {
                      selectedAnswerIndex = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () {
                if (selectedAnswerIndex == widget.correctAnswerIndex) {
                  // Respuesta correcta
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('¡Respuesta Correcta!'),
                      backgroundColor: Colors.green,
                    ),
                  );
                } else {
                  // Respuesta incorrecta
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Respuesta Incorrecta'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              child: Text('Verificar'),
            ),
          ],
        ),
      ),
    );
  }
}

// Otra pantalla a la que se navegará cuando se presione el botón de cambio de pantalla
class AnotherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Otra Pantalla'),
      ),
      body: Center(
        child: Text('Esta es otra pantalla.'),
      ),
    );
  }
}
