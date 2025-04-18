import 'package:flutter/material.dart';
import 'package:myapp/config/themes/utility.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Volver')),
      body: Center(
        child: Text(
          'Ruta no encontrada/disponible',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Utility.primaryOrangeColor,
          ),
        ),
      ),
    );
  }
}
