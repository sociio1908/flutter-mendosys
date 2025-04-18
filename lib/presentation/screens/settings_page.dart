import 'package:flutter/material.dart';

import '../widgets/widgets.dart' show SettingsItem;

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ajustes')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _TitleText(title: 'Información de la empresa '),
            SettingsItem(itemName: 'Nombre de la empresa'),
            SettingsItem(itemName: 'RNC'),
            SettingsItem(itemName: 'Direccción'),
            SettingsItem(itemName: 'Contacto'),
            _TitleText(title: 'Configuración de caja'),
            SettingsItem(itemName: 'Moneda de cobros'),
            SettingsItem(itemName: 'Caja registradoradora'),
            _TitleText(title: 'Periféricos'),
            SettingsItem(itemName: 'Impresora de ticket'),
            SettingsItem(itemName: 'Impresora A4'),
            SettingsItem(itemName: 'Lector códigos QR'),
            SettingsItem(itemName: 'Lector códigos barras'),
            _TitleText(title: 'Ajustes generales'),
            SettingsItem(itemName: 'Notificaciones'),
            SettingsItem(itemName: 'Idioma'),
            SettingsItem(itemName: 'Formato de fecha-hora'),
          ],
        ),
      ),
    );
  }
}

class _TitleText extends StatelessWidget {
  final String title;

  const _TitleText({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          color: Colors.grey.shade400,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
