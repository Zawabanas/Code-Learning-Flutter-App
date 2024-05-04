import 'package:flutter/material.dart';
import '../../constants.dart';

class Sorting extends StatefulWidget {
  const Sorting({
    super.key,
  });

  @override
  _SortingState createState() => _SortingState();
}

class _SortingState extends State<Sorting> {
  String _selectedContainer = "Mas vistos"; // Contenedor inicialmente seleccionado

  @override
  Widget build(BuildContext context) {
    return Row(
      //space between widgets
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildContainer("Mas vistos", _selectedContainer == "Mas vistos" ? kpink : Colors.white, _selectedContainer == "Mas vistos"),
        _buildContainer("Fundamentos", _selectedContainer == "Fundamentos" ? kpink : Colors.white, _selectedContainer == "Fundamentos"),
        _buildContainer("P.O.", _selectedContainer == "P.O." ? kpink : Colors.white, _selectedContainer == "P.O."),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child:
              SizedBox(height: 20, child: Image.asset("assets/icon/sort.png")),
        ),
      ],
    );
  }

  // Función para construir un contenedor con un texto, color y estilo de fuente dados
  Widget _buildContainer(String text, Color color, bool isSelected) {
    return GestureDetector(
      onTap: () {
        // Al hacer tap, actualiza el contenedor seleccionado y redibuja el widget
        setState(() {
          _selectedContainer = text; // Cambia el contenedor seleccionado
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10.0)),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
            color: isSelected ? Colors.white : Colors.black, // Cambia el color de la fuente según si está seleccionado o no
          ),
        ),
      ),
    );
  }
}
