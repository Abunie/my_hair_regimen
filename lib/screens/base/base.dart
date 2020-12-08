import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myhairregimen/models/product.dart';
import 'package:myhairregimen/models/product_notifier.dart';
import 'package:myhairregimen/models/tabIcon_data.dart';
import 'package:myhairregimen/screens/calendar/calendar.dart';
import 'package:myhairregimen/screens/notes/notes_screen.dart';
import 'package:myhairregimen/screens/products/products_screen.dart';
import 'package:myhairregimen/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:myhairregimen/widgets/bottom_bar_view.dart';
import 'package:myhairregimen/app_theme.dart';
import 'package:provider/provider.dart';

/**
 * This is the base page for this project
 */
class Base extends StatefulWidget {
  @override
  _BaseState createState() => _BaseState();
}

class _BaseState extends State<Base>
    with TickerProviderStateMixin {
  AnimationController animationController;

  List<TabIconData> tabIconsList = TabIconData.tabIconsList;

  Widget tabBody = Container(
    //color: AppTheme.background,
    color: Colors.blue,
  );

  @override
  void initState() {
    tabIconsList.forEach((TabIconData tab) {
      tab.isSelected = false;
    });
    tabIconsList[0].isSelected = true;

    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    tabBody = MyCalendar(animationController: animationController);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: FutureBuilder<bool>(
          //future: getData(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox();
            } else {
              return Stack(
                children: <Widget>[
                  tabBody,
                  bottomBar(),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    ProductNotifier productNotifier = Provider.of<ProductNotifier>(context, listen: false);
    //getProducts(productNotifier);
    return true;
  }
//  Future getProducts(ProductNotifier productNotifier) async{
//    QuerySnapshot snapshot = await Firestore.instance.collection('Products').getDocuments();
//    List<Product> _productList = [];
//    snapshot.documents.forEach((document){
//      Product product = Product.fromMap(document.data);
//      _productList.add(product);
//    });
//    productNotifier.productList = _productList;
//  }

  Widget bottomBar() {
    return Column(
      children: <Widget>[
        const Expanded(
          child: SizedBox(),
        ),
        BottomBarView(
          tabIconsList: tabIconsList,
          addClick: () {},
          changeIndex: (int index) {
            if (index == 0) {
              animationController.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      MyCalendar(animationController: animationController);
                });
              });
            } else if (index == 1 ) {
              animationController.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      ProductsScreen(animationController: animationController);
                });
              });
            }else if (index == 2 ) {
              animationController.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      Profile();
                });
              });
            } else if (index == 3) {
              animationController.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      NotesScreen(animationController: animationController);
                });
              });
            }
          },
        ),
      ],
    );
  }

}
