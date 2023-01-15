import 'package:flutter/material.dart';

import '../common/constants.dart';
import '../components/restaurant_item_card.dart';
import '../components/search_and_filter_widget.dart';
import 'popular_list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTopSection(),
            SearchAndFilterWidget(),
            _buildBannerWidget(context),
            _TitleSectionWidget(
              leadingText: 'Popular Restaurants',
              trailingText: 'View All',
              onTap: () {
                Navigator.pushNamed(context, PopularListPage.routeName);
              },
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RestaurantItemCard(
                    index: 0,
                    title: 'Lovy Food',
                    subtitle: '10 min',
                    imagePath: 'assets/img/lovy_food.png',
                    margin: EdgeInsets.only(
                      right: 16,
                      bottom: 16,
                      left: 16,
                    ),
                  ),
                  RestaurantItemCard(
                    index: 1,
                    title: 'Cloudy Food',
                    subtitle: '10 min',
                    imagePath: 'assets/img/cloudy_resto.png',
                    margin: EdgeInsets.only(
                      right: 16,
                      bottom: 16,
                    ),
                  ),
                  RestaurantItemCard(
                    index: 2,
                    title: 'Haty Food',
                    subtitle: '10 min',
                    imagePath: 'assets/img/halty_food.png',
                    margin: EdgeInsets.only(
                      right: 16,
                      bottom: 16,
                    ),
                  ),
                ],
              ),
            ),
            _TitleSectionWidget(
              leadingText: 'Popular Foods',
              trailingText: 'View All',
              onTap: () {},
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RestaurantItemCard(
                    index: 0,
                    title: 'Lovy Food',
                    subtitle: '10 min',
                    imagePath: 'assets/img/lovy_food.png',
                    margin: EdgeInsets.only(
                      right: 16,
                      bottom: 16,
                      left: 16,
                    ),
                  ),
                  RestaurantItemCard(
                    index: 1,
                    title: 'Cloudy Food',
                    subtitle: '10 min',
                    imagePath: 'assets/img/cloudy_resto.png',
                    margin: EdgeInsets.only(
                      right: 16,
                      bottom: 16,
                    ),
                  ),
                  RestaurantItemCard(
                    index: 2,
                    title: 'Haty Food',
                    subtitle: '10 min',
                    imagePath: 'assets/img/halty_food.png',
                    margin: EdgeInsets.only(
                      right: 16,
                      bottom: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 120),
          ],
        ),
      ),
    );
  }

  Container _buildBannerWidget(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      height: 180,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset('assets/img/item1-removebg-preview.png')
                      .image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Special Deal for December",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Order Now"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: secondaryColor,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildTopSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Container(
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              'Hello, Thorn!',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          Stack(
            children: [
              Icon(
                Icons.notifications_active,
                color: Theme.of(context).primaryColor,
              ),
              Positioned(
                right: 0,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      '1',
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            color: Colors.white,
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _TitleSectionWidget extends StatelessWidget {
  const _TitleSectionWidget({
    Key? key,
    required this.leadingText,
    required this.trailingText,
    this.onTap,
  }) : super(key: key);

  final String leadingText;
  final String trailingText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leadingText,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
          ),
          TextButton(
            onPressed: onTap,
            child: Text(trailingText),
          ),
        ],
      ),
    );
  }
}

class RestaurantModel {
  final String title;
  final String subtitle;
  final String imagePath;

  RestaurantModel(this.title, this.subtitle, this.imagePath);
}
