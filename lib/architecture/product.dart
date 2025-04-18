class Product {
  final int proID;
  final String proName, proDesc;
  final double proSalePrice, proPurchasePrice, proQuantity;
  final int proCategoryID;

  Product({
    required this.proID,
    required this.proName,
    required this.proDesc,
    required this.proSalePrice,
    required this.proPurchasePrice,
    required this.proQuantity,
    required this.proCategoryID,
  });
}
