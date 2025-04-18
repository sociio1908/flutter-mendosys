import 'package:flutter/material.dart';
import 'package:myapp/presentation/widgets/widgets.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int _navSelectiom = 0;
  final bool _showNewsBanner = true;

  final Color _orangeColor = Utility.primaryOrangeColor;
  final Color _blueColor = Utility.primaryBlueColor;

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    _navSelectiom = 0;

    return Scaffold(
      //Background
      body: Stack(
        children: [
          //Background
          CustomBackground(),
          //All widgest in front
          SafeArea(
            child: Column(
              children: [
                CustomAppBar(),
                HourDateBar(),
                if (_showNewsBanner)
                  BannerNewsBar(
                    titleBanner: 'Saquemos los numeritos',
                    subtitleBanner: 'Ingresa ahora al resumen, y revisa todo',
                  ),
                Expanded(child: ActionsButtons()),
              ],
            ),
          ),
        ],
      ),

      //Drawer
      drawer: CustomNavigationDrawer(),

      //Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        unselectedItemColor: _blueColor,
        unselectedLabelStyle: TextStyle(color: _blueColor),
        selectedItemColor: _orangeColor,
        selectedLabelStyle: TextStyle(color: _orangeColor),
        currentIndex: _navSelectiom,
        onTap: (val) {
          _navSelectiom = val;
          setState(() {});
          if (val == 2) {
            Navigator.pushNamed(context, '/settingsPage');
          }
        },
        items: [
          BottomNavigationBarItem(
            label: 'Inicio',
            icon: Icon(Icons.home_outlined, color: _blueColor),
            activeIcon: Icon(Icons.home, color: _orangeColor),
          ),
          BottomNavigationBarItem(
            label: 'Carrito',
            icon: Icon(Icons.shopping_cart_outlined, color: _blueColor),
            activeIcon: Icon(Icons.shopping_cart, color: _orangeColor),
          ),
          BottomNavigationBarItem(
            label: 'Ajustes',
            icon: Icon(Icons.settings_outlined, color: _blueColor),
            activeIcon: Icon(Icons.settings, color: _orangeColor),
          ),
        ],
      ),
    );
  }
}
