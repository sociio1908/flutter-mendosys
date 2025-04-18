import 'package:flutter/material.dart';
import 'package:myapp/presentation/widgets/widgets.dart';

class NewProductPage extends StatelessWidget {
  NewProductPage({super.key});

  final Color _orangeColor = Utility.primaryOrangeColor;
  final Color _blueColor = Utility.primaryBlueColor;
  void onChaged(String value) {}

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        foregroundColor: _orangeColor,
        title: Text(
          'Nuevo producto',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Información del producto',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,

                    color: _blueColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 10, bottom: 3),
                child: Divider(color: Colors.blueGrey.shade100),
              ),
              CustomTextInputField(onChanged: (val) {}, labelName: 'Nombre'),
              CustomTextInputField(
                onChanged: (val) {},
                labelName: 'Descripción',
              ),
              CustomTextInputField(
                onChanged: (val) {},
                labelName: 'Categoría',
                onIconTap: () {},
                suffixIcon: Icons.arrow_forward_ios,
                iconColor: _orangeColor,
              ),
              CustomTextInputField(
                textInputType: TextInputType.numberWithOptions(),

                onChanged: (val) {},
                labelName: 'Precio compra',
                suffixIcon: Icons.onetwothree_sharp,
              ),
              CustomTextInputField(
                textInputType: TextInputType.numberWithOptions(),

                onChanged: (val) {},
                labelName: 'Precio venta',
                suffixIcon: Icons.onetwothree_sharp,
              ),
              CustomTextInputField(
                textInputType: TextInputType.numberWithOptions(),
                onChanged: (val) {},
                labelName: 'Cantidad',
                suffixIcon: Icons.onetwothree_sharp,
              ),
              CustomTextInputField(
                textInputType: TextInputType.numberWithOptions(),
                onChanged: (val) {},
                labelName: 'Reorden',
                suffixIcon: Icons.onetwothree_sharp,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomButton(
        btnName: 'Agregar producto',
        filled: true,
        onTap: () {},
      ),
    );
  }
}
