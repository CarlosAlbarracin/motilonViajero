import 'dart:collection';


import 'package:motilon_viajero/restaurants/model/m_menu.dart';
import 'package:motilon_viajero/restaurants/utils/breakfast_path_images.dart';
import 'package:motilon_viajero/restaurants/utils/dessrt_images.dart';
import 'package:motilon_viajero/restaurants/utils/dinner_images.dart';
import 'package:motilon_viajero/restaurants/utils/lunch_images.dart';


class ControllerMenu {
  static final List<ModelMenu> _dataMenu = [
    ModelMenu(
      title: 'spezia (Cucuta)',
      image: BreakfastPathImages.frenchToast,
      urlPage:
          'https://cucutalinda.com/wp-content/uploads/2021/03/spezia-portada.jpg',
    ),
    ModelMenu(
      title: 'Londeros Sur (Cucuta)' ,
      image: BreakfastPathImages.casserole,
      urlPage: 'https://i.ytimg.com/vi/nSm4s7vJEHA/maxresdefault.jpg',
    ),
    ModelMenu(
      title: 'la granja (chinacota)',
      image: LunchPathImages.creamyGarlicChickenBreasts,
      urlPage: 'https://scontent-bog1-1.xx.fbcdn.net/v/t1.6435-9/65317598_2299937653388266_2275345515891654656_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=9267fe&_nc_eui2=AeFf7H_Fm_FpktMQRRjRhTa8spngsrUTerOymeCytRN6s1g9H402nAF0OVk8c_AiwBYgPXb_tWPsfKoMs1jIRkSY&_nc_ohc=wmTeMUi9r6AAX9kKxjT&_nc_ht=scontent-bog1-1.xx&oh=00_AfCR4W0tYniGkxNXKo4MjQXe6a2Y3N5yIAqmNeoack4L6Q&oe=64B134A3',
    ),
    ModelMenu(
      title: 'La Mansion (ocaña)',
      image: LunchPathImages.crockpotChickenBreasts,
      urlPage: 'https://www.instagram.com/lamansion_cg/?hl=en',
    ),
    ModelMenu(
      title: 'Restaurante Ank (Cucuta)',
      image: DinnerPathImages.beiyrut,
      urlPage:
          'https://www.restauranteank.com/',
    ),
    ModelMenu(
      title: 'Molinito (cucuta)',
      image: DinnerPathImages.markWahlberger,
      urlPage: 'https://thebrag.com/wahlburgers-sydney/',
    ),
    ModelMenu(
      title: 'La provincia (ocaña)',
      image: DessertPathImages.iceCream,
      urlPage: 'https://www.icecream.com/',
    ),
    ModelMenu(
      title: 'El Riconcito (Bochalema)',
      image: DessertPathImages.moltenCake,
      urlPage: 'https://www.foodandwine.com/recipes/molten-chocolate-cakes/',
    ),
  ];
  static UnmodifiableListView<ModelMenu> get dataMenu =>
      UnmodifiableListView(_dataMenu);
  static int get dataLength => _dataMenu.length;
  static ModelMenu getMenu(int index) => _dataMenu.elementAt(index);
}
