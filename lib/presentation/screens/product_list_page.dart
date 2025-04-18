import 'package:flutter/material.dart';
import 'package:myapp/presentation/widgets/widgets.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  // final Color _orangeColor = Utility.primaryOrangeColor;

  final Color _blueColor = Utility.primaryBlueColor;

  final List<String> _myCategories = [
    'Todos',
    'Lácteos',
    'Carnicería',
    'Charcutería',
    'Pescadería',
    'Frutas y verduras',
    'Panadería y horno',
    'Bebidas y bodega',
    'Congelados',
    'Refrigerados',
  ];

  final List<String> _myProducts = [
    'Bubaloo',
    'Cream Cheese Wala',
    'Pechuga de pollo',
    'Jamon serrano',
    'Mero congelado',
    'Manzana verde',
    'Pan integral Wala',
    'Vino la fuerza',
    'Rib-eye',
    'Jugo Naranja 100% Rica',
  ];

  void selectedIndex(String catSelected) {}

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Productos ',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          const SizedBox(width: 20),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchBar(
            hintTexLabel: 'Buscar producto',
            sufixIcon: Icons.search,
            prefixIcon: Icons.qr_code_scanner,
            onTapSuffixIcon: () {},
            onChanged: (val) {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Text(
              'Categorias',
              style: TextStyle(
                color: _blueColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: size.height * .08,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _myCategories.length,
              itemBuilder: (_, index) {
                return CustomCategoriesSelection(
                  onTap: (val) {},
                  itemName: _myCategories[index],
                  isSelected: (index > 0) ? false : true,
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _myCategories.length,
              itemBuilder: (_, index) {
                return CustomItemProduct(
                  proImage: 'assets/cocaCola.jpg',
                  proCategory: _myCategories[index],
                  proName: _myProducts[index],
                  proQuantity: (index + 1).toDouble(),
                );
              },
            ),
          ),
        ],
      ),

      bottomNavigationBar: CustomButton(
        btnName: 'Nuevo producto',
        filled: true,
        onTap: () {
          Navigator.pushNamed(context, '/new_productPage');
        },
      ),
    );
  }
}
