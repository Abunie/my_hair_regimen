class ProductListData {
  ProductListData({
    this.imagePath = '',
    this.productName = '',
    this.category = '',
    this.reviews = 0,
    this.rating = 0.0,
    this.price = 0,
  });

  String imagePath;
  String productName;
  String category;
  double rating;
  int reviews;
  int price;

  static List<ProductListData> productList = <ProductListData>[
    ProductListData(
      imagePath: 'assets/media/sample_products/rahuashampoo.jpg',
      productName: 'Rahua Shampoo',
      category: 'Shampoo',
      reviews: 80,
      rating: 4.4,
      price: 10,
    ),
    ProductListData(
      imagePath: 'assets/media/sample_products/Pro-growth.jpg',
      productName: 'Difeel Premium Natural Hair Care Oil',
      category: 'Oil',
      reviews: 74,
      rating: 4.5,
      price: 10,
    ),
    ProductListData(
      imagePath: 'assets/media/sample_products/cantudetangler.jpeg',
      productName: 'Cantu detangler',
      category: 'Detangler',
      reviews: 62,
      rating: 4.0,
      price: 60,
    ),
    ProductListData(
      imagePath: 'assets/media/sample_products/pink_moisturizer.jpg',
      productName: 'Pink Moisturizer',
      category: 'Cream',
      reviews: 90,
      rating: 4.4,
      price: 12,
    ),
    ProductListData(
      imagePath: 'assets/media/sample_products/AuntJackies.jpg',
      productName: 'Aunt Jackies Intensive Repair Conditioner',
      category: 'Deep Conditioner',
      reviews: 240,
      rating: 4.5,
      price: 10,
    ),
  ];
}
