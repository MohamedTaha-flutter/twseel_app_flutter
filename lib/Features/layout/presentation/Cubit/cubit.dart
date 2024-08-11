import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twseel_app/Features/Home/presentation/views/home_view.dart';
import 'package:twseel_app/Features/layout/presentation/Cubit/state.dart';
import 'package:twseel_app/Features/order/presentation/views/order_view.dart';
import 'package:twseel_app/Features/profile/presentation/views/profile_view.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(InitialLayoutState());

  static LayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "الرئيسيه"),
    BottomNavigationBarItem(
        icon: Icon(Icons.card_travel_outlined), label: "الطلبات"),
    BottomNavigationBarItem(
        icon: Icon(Icons.person_2_outlined), label: "الملف الشخصى"),
  ];

  List<Widget> views = const [
    HomeView(),
    OrderView(),
    ProfileView(),
  ];

  void changeViewsOfLayout(value) {
    currentIndex = value;
    emit(LayoutChangeViewsState());
  }
}
