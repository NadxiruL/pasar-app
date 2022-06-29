class Product {
  final String? id;
  final String? title;
  final String? description;
  final double? price;
  final String? imageUrl;
  bool? isFavorite; //not final because it is changeable

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isFavorite = false,
  });
}

final List<Product> loadedProducts = [
  Product(
    id: 'p1',
    title: 'Classic blend',
    description: 'Classic blend',
    price: 29.99,
    imageUrl:
        'https://img.shoppegram.com/coffee_mockup_npmj09172s1v7mmmzwid.png?w=1000',
  ),
  Product(
    id: 'p2',
    title: 'Royal blend',
    description: 'Royal blend',
    price: 59.99,
    imageUrl:
        'https://img.shoppegram.com/coffee_mockup_royal_67ndacfkeaeczqobai23.png?w=1000',
  ),
  Product(
    id: 'p3',
    title: 'JB blend',
    description: 'JB blend',
    price: 19.99,
    imageUrl:
        'https://img.shoppegram.com/coffee_mockup_jb_pyadayrpefwwnixic1df.png?w=1000',
  ),
  Product(
    id: 'p4',
    title: 'Aceh Gayo',
    description: 'Aceh Gayo',
    price: 49.99,
    imageUrl:
        'https://img.shoppegram.com/coffee_gayo_peaberry_jqqjsqtz73ijlmzy9scy.jpg?w=1000',
  ),
];
