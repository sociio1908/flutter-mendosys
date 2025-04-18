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
            SettingsItem(
              itemName: 'Nombre de la empres',
              iconItem: Icons.corporate_fare_outlined,
            ),
            SettingsItem(itemName: 'RNC', iconItem: Icons.copyright_outlined),
            SettingsItem(
              itemName: 'Direccción',
              iconItem: Icons.location_on_outlined,
            ),
            SettingsItem(
              itemName: 'Contacto',
              iconItem: Icons.phone_android_outlined,
            ),
            _TitleText(title: 'Configuración de caja'),
            SettingsItem(
              itemName: 'Moneda de cobros',
              iconItem: Icons.money_outlined,
            ),
            SettingsItem(
              itemName: 'Caja registradoradora',
              iconItem: Icons.app_registration_outlined,
            ),
            _TitleText(title: 'Periféricos'),
            SettingsItem(
              itemName: 'Impresora de ticket',
              iconItem: Icons.local_print_shop_outlined,
            ),
            SettingsItem(
              itemName: 'Impresora A4',
              iconItem: Icons.print_outlined,
            ),
            SettingsItem(
              itemName: 'Lector códigos QR',
              iconItem: Icons.qr_code_scanner_outlined,
            ),
            SettingsItem(
              itemName: 'Lector códigos barras',
              iconItem: Icons.adf_scanner_outlined,
            ),
            _TitleText(title: 'Ajustes generales'),
            SettingsItem(
              itemName: 'Notificaciones',
              iconItem: Icons.notifications_active_outlined,
            ),
            SettingsItem(itemName: 'Idioma', iconItem: Icons.language_outlined),
            SettingsItem(
              itemName: 'Formato de fecha-hora',
              iconItem: Icons.text_format_outlined,
            ),
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
