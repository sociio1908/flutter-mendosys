import 'package:flutter/material.dart';
import 'package:myapp/presentation/widgets/widgets.dart';

class CustomNavigationDrawer extends StatelessWidget {
  const CustomNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:
          (context, constrains) => NavigationDrawer(
            backgroundColor: Colors.white,
            children: [
              CustomLoggedUser(
                constrains: constrains,
                userName: 'Jerinel Mendoza',
              ),
              CustomItemDrawer(
                onTap: () {},
                icon: Icons.person_3_outlined,

                title: 'Mi usuario',
              ),
              CustomItemDrawer(
                onTap: () {},
                icon: Icons.sell_outlined,

                title: 'Ventas',
              ),
              CustomItemDrawer(
                onTap: () {},
                icon: Icons.restore,

                title: 'Devoluciones',
              ),
              CustomItemDrawer(
                onTap: () {},
                icon: Icons.perm_identity_outlined,
                title: 'Clientes',
              ),
              CustomItemDrawer(
                onTap: () {},
                icon: Icons.report_outlined,

                title: 'Reportes',
              ),
              CustomItemDrawer(
                onTap: () {},
                icon: Icons.group_outlined,
                title: 'Personal',
              ),
              CustomItemDrawer(
                onTap: () {},
                icon: Icons.exit_to_app,
                title: 'Salir',
              ),
            ],
          ),
    );
  }
}
