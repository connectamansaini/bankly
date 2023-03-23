class Category {
  const Category({
    required this.title,
    required this.image,
  });
  final String title;
  final String image;
}

const List<Category> categories = <Category>[
  Category(title: 'Food', image: 'assets/home/categories/food.png'),
  Category(
    title: 'Entertainment',
    image: 'assets/home/categories/entertainment.png',
  ),
  Category(title: 'Travel', image: 'assets/home/categories/travel.png'),
  Category(
    title: 'Personal Care',
    image: 'assets/home/categories/personal-care.png',
  ),
  Category(title: 'Shopping', image: 'assets/home/categories/shopping-bag.png'),
  Category(
    title: 'Transportation',
    image: 'assets/home/categories/transportation.png',
  ),
  Category(title: 'Education', image: 'assets/home/categories/education.png'),
  Category(
    title: 'Miscellaneous',
    image: 'assets/home/categories/miscellaneous.png',
  ),
];
