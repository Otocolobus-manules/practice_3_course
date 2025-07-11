import 'package:practice_3_course/src/theme/image_sources.dart';
import 'package:practice_3_course/src/features/menu/models/menu_item.dart';
import 'package:practice_3_course/src/features/menu/data/category_repository.dart';


List<MenuItem> menuItems = [
  MenuItem(
    id: 0,
    name: 'Олеато',
    price: 180,
    imageUrl: ImageSources.coffee,
    category: categories[0],
  ),
  MenuItem(
    id: 1,
    name: 'Американо',
    price: 200,
    category: categories[0],
  ),
  MenuItem(
    id: 2,
    name: 'Эспрессо',
    price: 99,
    imageUrl: ImageSources.coffee,
    category: categories[0],
  ),
  MenuItem(
    id: 3,
    name: 'Айс кофе',
    price: 350,
    imageUrl: ImageSources.coffee,
    category: categories[0],
  ),

  MenuItem(
    id: 4,
    name: 'Капучино',
    price: 250,
    imageUrl: ImageSources.coffee,
    category: categories[1],
  ),
  MenuItem(
    id: 5,
    name: 'Флэт Уайт',
    price: 200,
    category: categories[1],
  ),
  MenuItem(
    id: 6,
    name: 'Латте',
    price: 250,
    imageUrl: ImageSources.coffee,
    category: categories[1],
  ),

  MenuItem(
    id: 7,
    name: 'Чёрный чай',
    price: 120,
    imageUrl: ImageSources.coffee,
    category: categories[2],
  ),
  MenuItem(
    id: 8,
    name: 'Зелёный чай',
    price: 130,
    imageUrl: ImageSources.coffee,
    category: categories[2],
  ),
  MenuItem(
    id: 9,
    name: 'Улун',
    price: 140,
    category: categories[2],
  ),
  MenuItem(
    id: 10,
    name: 'Травяной сбор',
    price: 150,
    category: categories[2],
  ),

  MenuItem(
    id: 11,
    name: 'Раф Кокос',
    price: 279,
    imageUrl: ImageSources.coffee,
    category: categories[3],
  ),
  MenuItem(
    id: 12,
    name: 'Бамбл',
    price: 305,
    imageUrl: ImageSources.coffee,
    category: categories[3],
  ),
  MenuItem(
    id: 13,
    name: 'Сезонный латте',
    price: 320,
    imageUrl: ImageSources.coffee,
    category: categories[3],
  ),

  MenuItem(
    id: 14,
    name: 'Чизкейк Нью-Йорк',
    price: 300,
    category: categories[4],
  ),
  MenuItem(
    id: 15,
    name: 'Тирамису',
    price: 320,
    category: categories[4],
  ),
  MenuItem(
    id: 16,
    name: 'Брауни',
    price: 280,
    category: categories[4],
  ),
  MenuItem(
    id: 17,
    name: 'Круассан',
    price: 150,
    category: categories[4],
  ),


  MenuItem(
    id: 18,
    name: 'Классический лимонад',
    price: 220,
    category: categories[5],
  ),
  MenuItem(
    id: 19,
    name: 'Ягодный лимонад',
    price: 250,
    category: categories[5],
  ),
  MenuItem(
    id: 20,
    name: 'Матча айс латте',
    price: 300,
    category: categories[5],
  ),

  MenuItem(
    id: 21,
    name: 'Овсянка с ягодами',
    price: 190,
    category: categories[6],
  ),
  MenuItem(
    id: 22,
    name: 'Гранола с йогуртом',
    price: 220,
    category: categories[6],
  ),
  MenuItem(
    id: 23,
    name: 'Сырники',
    price: 260,
    category: categories[6],
  ),

  MenuItem(
    id: 24,
    name: 'Сэндвич с курицей',
    price: 280,
    category: categories[7],
  ),
  MenuItem(
    id: 25,
    name: 'Панини с ветчиной и сыром',
    price: 300,
    category: categories[7],
  ),
  MenuItem(
    id: 26,
    name: 'Киш с лососем',
    price: 350,
    category: categories[7],
  ),

  MenuItem(
    id: 27,
    name: 'Веганский брауни',
    price: 260,
    category: categories[8],
  ),
  MenuItem(
    id: 28,
    name: 'Веганский смузи',
    price: 290,
    category: categories[8],
  ),

  MenuItem(
    id: 29,
    name: 'Тыквенный латте',
    price: 320,
    category: categories[9],
  ),
  MenuItem(
    id: 30,
    name: 'Имбирный чай',
    price: 180,
    category: categories[9],
  ),
];
