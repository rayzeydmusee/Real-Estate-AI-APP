import 'package:flutter/material.dart';
import 'package:rental_app/models/category.dart';
import 'package:rental_app/utils/colors.dart';
import 'package:rental_app/utils/dimensions.dart';
import 'category_card.dart';
import 'recommended_list.dart';

class TabView extends StatelessWidget {
  List<Category> categories = [
    Category(
      Color(0xffFCE183),
      Color(0xffF68D7F),
      'Gadgets',
      'assets/images/house3.png',
    ),
    Category(
      Color(0xffF749A2),
      Color(0xffFF7375),
      'Clothes',
      'assets/images/house3.png',
    ),
    Category(
      Color(0xff00E9DA),
      Color(0xff5189EA),
      'Fashion',
      'assets/images/house3.png',
    ),
    Category(
      Color(0xffAF2D68),
      Color(0xff632376),
      'Home',
      'assets/images/house3.png',
    ),
    Category(
      Color(0xff36E892),
      Color(0xff33B2B9),
      'Beauty',
      'assets/images/house3.png',
    ),
    Category(
      Color(0xffF123C4),
      Color(0xff668CEA),
      'Appliances',
      'assets/images/house3.png',
    ),
  ];

  final TabController tabController;

  TabView({
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height / 9);
    return TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: tabController,
        children: <Widget>[
          Expanded(
              child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 20,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      IntrinsicHeight(
                        child: Container(
                          margin: const EdgeInsets.only(left: 16.0, right: 8.0),
                          width: 4,
                          color: mediumYellow,
                        ),
                      ),
                      Center(
                          child: Text(
                        'Add Property',
                        style: TextStyle(
                            color: darkGrey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      )),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    width: Dimensions.height40,
                    height: Dimensions.height40,
                    child: Icon(Icons.add_circle,
                        color: Colors.white, size: Dimensions.iconSize27),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius15),
                      color: AppColors.mainColor,
                    ),
                  ),
                ),
                //Container(
                //   margin: EdgeInsets.all(8.0),
                //  height: MediaQuery.of(context).size.height / 9,
                //  width: MediaQuery.of(context).size.width,
                // child: ListView.builder(
                //   scrollDirection: Axis.horizontal,
                //   itemCount: categories.length,
                //   itemBuilder: (_, index) => CategoryCard(
                //        category: categories[index],
                //      ))),

                SizedBox(
                  height: 16.0,
                ),
                Flexible(child: RecommendedList()),
              ],
            ),
          )),
          Column(children: <Widget>[
            Expanded(
                child: SizedBox(
              height: 16.0,
            )),
            Flexible(child: RecommendedList())
          ]),
        ]);
  }
}
