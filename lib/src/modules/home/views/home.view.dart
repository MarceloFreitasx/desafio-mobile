import 'package:badges/badges.dart';
import 'package:desafioi9xp/src/modules/dashboard/views/dashboard.view.dart';
import 'package:desafioi9xp/src/modules/home/controllers/home.controller.dart';
import 'package:desafioi9xp/styles/appcolors.dart';
import 'package:desafioi9xp/styles/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController _homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      bottomNavigationBar: Observer(
        builder: (BuildContext context) {
          return BottomNavigationBar(
            backgroundColor: AppColors.bgBottomNavBar,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.white,
            items: buildBottomNavBarItems(),
            currentIndex: _homeController.homeStore.selectedIndex,
            selectedItemColor: AppColors.primary,
            onTap: _homeController.onItemTapped,
          );
        },
      ),
      body: buildPageView(),
    );
  }

  Widget buildPageView() {
    return PageView(
      controller: _homeController.pageController,
      onPageChanged: _homeController.onItemTapped,
      children: <Widget>[
        DashboardView(),
        SafeArea(child: Text("Search")),
        SafeArea(child: Text("Cart")),
        SafeArea(child: Text("Profile")),
        SafeArea(child: Text("More")),
      ],
    );
  }

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text('Home'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.zoom_in),
        title: Text('Search'),
      ),
      BottomNavigationBarItem(
        icon: true
            ? Icon(Icons.shopping_cart)
            : Badge(
                badgeContent: Text("3", style: AppTextStyle.CART_NUMBER_BADGE),
                child: Icon(Icons.shopping_cart),
              ),
        title: Text('Cart'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        title: Text('Profile'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.menu),
        title: Text('More'),
      ),
    ];
  }
}