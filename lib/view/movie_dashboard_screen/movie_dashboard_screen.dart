import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scale_up_task/Res/assets/app_assets.dart';
import 'package:scale_up_task/Res/colors/app_colors.dart';
import 'package:scale_up_task/res/components/text.dart';
import 'package:scale_up_task/view/movie_dashboard_screen/widget/button_category.dart';
import 'package:scale_up_task/view/movie_dashboard_screen/widget/continue_watching_movie.dart';
import 'package:scale_up_task/view/movie_dashboard_screen/widget/recommended_movies_Item.dart';
import 'package:scale_up_task/view/movie_dashboard_screen/widget/search_menu.dart';
import 'package:scale_up_task/view/movie_dashboard_screen/widget/single_image_carousel.dart';
import 'package:scale_up_task/view/movie_dashboard_screen/widget/text_title.dart';
import 'package:scale_up_task/view/movie_dashboard_screen/widget/trending_movies_Item.dart';

import '../../viewModel/dashboard_controller/dashboard_controller.dart';

class MovieDashboardScreen extends StatelessWidget {
  final DashboardController controller = Get.put(DashboardController());

  MovieDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ModifiedText(
                    text: "Hello Rafsan",
                    color: Colors.white,
                    size: 20,
                    fontWeight: FontWeight.normal),
                ModifiedText(
                    text: "Let's watch today",
                    color: Colors.grey,
                    size: 14,
                    fontWeight: FontWeight.normal)
              ],
            ),
            Container(
              height: 46,
              width: 46,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(AppAssets.profile), fit: BoxFit.cover)),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              SearchMenu(),
              TextTitle(
                mediumTitle: 'Categories',
                smallTitle: 'See More',
                onPress: () {},
              ),
              Obx(() {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: controller.categories.map((category) {
                      bool isSelected =
                          category == controller.selectedCategory.value;
                      return ButtonCategory(
                        label: category,
                        isSelected: isSelected,
                        onTap: () {
                          controller.selectCategory(category);
                        },
                      );
                    }).toList(),
                  ),
                );
              }),
              SingleImageCarousel(),
              TextTitle(
                mediumTitle: 'Trending Movies',
                smallTitle: 'See More',
                onPress: () {},
              ),
              Obx(() => SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 24,
                      children: controller.trendingMovie
                          .map((movie) => SizedBox(
                                child: TrendingMoviesItem(
                                  movies: movie,
                                ),
                              ))
                          .toList(),
                    ),
                  )),
              TextTitle(
                mediumTitle: 'Continue Watching',
                smallTitle: 'See More',
                onPress: () {},
              ),
              Obx(() => SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 24,
                      children: controller.continuesWatching
                          .map((movie) => SizedBox(
                                child: ContinueWatchingItem(
                                  movies: movie,
                                ),
                              ))
                          .toList(),
                    ),
                  )),
              TextTitle(
                mediumTitle: 'Recommended For You',
                smallTitle: 'See More',
                onPress: () {},
              ),
              Obx(() => SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 20,
                      children: controller.recommendedMovie
                          .map((movie) => SizedBox(
                                child: RecommendedMoviesItem(
                                  movies: movie,
                                ),
                              ))
                          .toList(),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
