import 'dart:ui';
import 'package:myhairregimen/screens/products/filter_screen.dart';
import 'package:myhairregimen/screens/products/product_list_view.dart';
import 'package:myhairregimen/models/product_list_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:myhairregimen/app_theme.dart';
import 'package:myhairregimen/widgets/regular_app_bar.dart';

DateTime now = DateTime.now();
String formattedDate = DateFormat('MMMMd').format(now);

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key key, this.animationController}) : super(key: key);
  final AnimationController animationController;
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen>
    with TickerProviderStateMixin {
  Animation<double> topBarAnimation;
  AnimationController animationController;
  List<ProductListData> productList = ProductListData.productList;
  final ScrollController scrollController = ScrollController();
  double topBarOpacity = 0.0;


  //@override
//  void initState() {
//    topBarAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
//        CurvedAnimation(
//            parent: widget.animationController,
//            curve: Interval(0, 0.5, curve: Curves.fastOutSlowIn)));
//
//
//    scrollController.addListener(() {
//      if (scrollController.offset >= 24) {
//        if (topBarOpacity != 1.0) {
//          setState(() {
//            topBarOpacity = 1.0;
//          });
//        }
//      } else if (scrollController.offset <= 24 &&
//          scrollController.offset >= 0) {
//        if (topBarOpacity != scrollController.offset / 24) {
//          setState(() {
//            topBarOpacity = scrollController.offset / 24;
//          });
//        }
//      } else if (scrollController.offset <= 0) {
//        if (topBarOpacity != 0.0) {
//          setState(() {
//            topBarOpacity = 0.0;
//          });
//        }
//      }
//    });
//
//    animationController = AnimationController(
//        duration: const Duration(milliseconds: 1000), vsync: this);
//    super.initState();
//  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: RegularAppBar("Recommended Products"),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).padding.bottom,
            ),
            Expanded(
              child: NestedScrollView(
                controller: scrollController,
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                            return Column(
                              children: <Widget>[
                                getSearchBarUI(),
                              ],
                            );
                          }, childCount: 1),
                    ),
                    SliverPersistentHeader(
                      pinned: true,
                      floating: true,
                      delegate: ContestTabHeader(
                        getFilterBarUI(),
                      ),
                    ),
                  ];
                },
                body: Container(
                  color: AppTheme.background,
                  child: ListView.builder(
                    itemCount: productList.length,
                    padding: const EdgeInsets.only(top: 8),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      final int count =
                      productList.length > 10 ? 10 : productList.length;
//                      final Animation<double> animation =
//                      Tween<double>(begin: 0.0, end: 1.0).animate(
//                          CurvedAnimation(
//                              parent: animationController,
//                              curve: Interval(
//                                  (1 / count) * index, 1.0,
//                                  curve: Curves.fastOutSlowIn)));
                      //animationController.forward();
                      return ProductListView(
                        callback: () {},
                        productData: productList[index],
                        //animation: animation,
                        //animationController: animationController,
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget getSearchBarUI() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 16, top: 8, bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: AppTheme.background,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(38.0),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        offset: const Offset(0, 2),
                        blurRadius: 8.0),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 4, bottom: 4),
                  child: TextField(
                    onChanged: (String txt) {},
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                    cursorColor: AppTheme.themeColor,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Product Name',
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppTheme.themeColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(38.0),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    offset: const Offset(0, 2),
                    blurRadius: 8.0),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: const BorderRadius.all(
                  Radius.circular(32.0),
                ),
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(FontAwesomeIcons.search,
                      size: 20,
                      color: AppTheme.background),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }



  Widget getFilterBarUI() {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 24,
            decoration: BoxDecoration(
              color: AppTheme.background,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: const Offset(0, -2),
                    blurRadius: 8.0),
              ],
            ),
          ),
        ),
        Container(
          color: AppTheme.background,
          child: Padding(
            padding:
            const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 4),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '53 products found',
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    focusColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    splashColor: Colors.grey.withOpacity(0.2),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4.0),
                    ),
                    onTap: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      Navigator.push<dynamic>(
                        context,
                        MaterialPageRoute<dynamic>(
                            builder: (BuildContext context) => FiltersScreen(),
                            fullscreenDialog: true),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Filter',
                            style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 16,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.sort,
                                color: AppTheme.themeColor
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Divider(
            height: 1,
          ),
        )
      ],
    );
  }

//  Widget getAppBarUI() {
//    return Column(
//      children: <Widget>[
//        AnimatedBuilder(
//          animation: widget.animationController,
//          builder: (BuildContext context, Widget child) {
//            return FadeTransition(
//              opacity: topBarAnimation,
//              child: Transform(
//                transform: Matrix4.translationValues(
//                    0.0, 30 * (1.0 - topBarAnimation.value), 0.0),
//                child: Container(
//                  decoration: BoxDecoration(
//                    color: AppTheme.white.withOpacity(topBarOpacity),
//                    borderRadius: const BorderRadius.only(
//                      bottomLeft: Radius.circular(32.0),
//                    ),
//                    boxShadow: <BoxShadow>[
//                      BoxShadow(
//                          color: AppTheme.grey
//                              .withOpacity(0.4 * topBarOpacity),
//                          offset: const Offset(1.1, 1.1),
//                          blurRadius: 10.0),
//                    ],
//                  ),
//                  child: Column(
//                    children: <Widget>[
//                      SizedBox(
//                        height: MediaQuery.of(context).padding.top,
//                      ),
//                      Padding(
//                        padding: EdgeInsets.only(
//                            left: 16,
//                            right: 16,
//                            top: 16 - 8.0 * topBarOpacity,
//                            bottom: 12 - 8.0 * topBarOpacity),
//                        child: Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          children: <Widget>[
//                            Expanded(
//                              child: Padding(
//                                padding: const EdgeInsets.all(8.0),
//                                child: Text(
//                                  "Recommended Products",
//                                  textAlign: TextAlign.left,
//                                  style: TextStyle(
//                                    fontFamily: AppTheme.fontName,
//                                    fontWeight: FontWeight.w700,
//                                    fontSize: 18 + 6 - 6 * topBarOpacity,
//                                    letterSpacing: 1.2,
//                                    color: AppTheme.darkerText,
//                                  ),
//                                ),
//                              ),
//                            ),
//                            Padding(
//                              padding: const EdgeInsets.only(
//                                left: 8,
//                                right: 8,
//                              ),
//                              child: Row(
//                                children: <Widget>[
//                                  Padding(
//                                    padding: const EdgeInsets.only(right: 8),
//                                    child: Icon(
//                                      Icons.calendar_today,
//                                      color: AppTheme.grey,
//                                      size: 18,
//                                    ),
//                                  ),
//                                  Text(
//                                    formattedDate,
//                                    textAlign: TextAlign.left,
//                                    style: TextStyle(
//                                      fontFamily: AppTheme.fontName,
//                                      fontWeight: FontWeight.normal,
//                                      fontSize: 18,
//                                      letterSpacing: -0.2,
//                                      color: AppTheme.darkerText,
//                                    ),
//                                  ),
//                                ],
//                              ),
//                            ),
//                          ],
//                        ),
//                      )
//                    ],
//                  ),
//                ),
//              ),
//            );
//          },
//        )
//      ],
//    );
//  }
}


class ContestTabHeader extends SliverPersistentHeaderDelegate {
  ContestTabHeader(
      this.searchUI,
      );
  final Widget searchUI;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return searchUI;
  }

  @override
  double get maxExtent => 52.0;

  @override
  double get minExtent => 52.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
