import 'package:greengrocer/src/models/item_model.dart';

ItemModel apple = ItemModel(
  itemName: 'Maçã',
  img: 'assets/fruits/apple.png',
  unit: 'kg',
  price: 5.5,
  description:
      'A melhor maçã da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel grape = ItemModel(
  itemName: 'Uva',
  img: 'assets/fruits/grape.png',
  unit: 'kg',
  price: 7.4,
  description:
      'A melhor uva da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel guava = ItemModel(
  itemName: 'Goiaba',
  img: 'assets/fruits/guava.png',
  unit: 'kg',
  price: 11.5,
  description:
      'A melhor goiaba da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel kiwi = ItemModel(
  itemName: 'Kiwi',
  img: 'assets/fruits/kiwi.png',
  unit: 'un',
  price: 2.5,
  description:
      'O melhor kiwi da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel mango = ItemModel(
  itemName: 'Manga',
  img: 'assets/fruits/mango.png',
  unit: 'un',
  price: 2.5,
  description:
      'A melhor manga da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel papaya = ItemModel(
  itemName: 'Mamão',
  img: 'assets/fruits/papaya.png',
  unit: 'kg',
  price: 8,
  description:
      'O melhor mamão da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

List<ItemModel> items = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
];

List<String> categories = [
  'Frutas',
  'Grãos',
  'Verduras',
  'Temperos',
  'Cereais',
];
