import 'package:flutter/material.dart';
import 'package:myapp/presentation/widgets/widgets.dart' show ActionsItemButton;

class ActionsButtons extends StatelessWidget {
  ActionsButtons({super.key});

  final List<String> _myButtons = [
    'Ventas',
    'Productos',
    'Gastos',
    'Clientes',
    'Facturas',
    'Reportes',
  ];

  void onTapButton(String buttonName, BuildContext context) {
    switch (buttonName) {
      case 'Productos':
        Navigator.pushNamed(context, '/product_listPage');
        break;

      // case 'Ventas':
      //   Navigator.pushNamed(context, '/product_listPage');
      //   break;

      // case 'Ventas':
      //   Navigator.pushNamed(context, '/product_listPage');
      //   break;

      // case 'Ventas':
      //   break;

      // case 'Ventas':
      //   break;
      // case 'Ventas':
      //   break;

      default:
        Navigator.pushNamed(context, '/not_foundPage');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),

      itemCount: _myButtons.length,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      itemBuilder:
          (_, index) => ActionsItemButton(
            buttonIcon: 'assets/${_myButtons[index]}.png',
            buttonName: _myButtons[index],
            size: size,
            onTap: onTapButton,
          ),
    );
  }
}
