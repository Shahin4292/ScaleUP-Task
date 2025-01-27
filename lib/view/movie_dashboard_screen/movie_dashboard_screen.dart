import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scale_up_task/Res/assets/app_assets.dart';
import 'package:scale_up_task/Res/colors/app_colors.dart';
import 'package:scale_up_task/res/components/text.dart';
import 'package:scale_up_task/view/movie_dashboard_screen/widget/apps_bar.dart';

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
            CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(AppAssets.facebook)
            ),
          ],
        ),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.search, color: Colors.white),
        //     onPressed: () {},
        //   ),
        //   IconButton(
        //     icon: const Icon(Icons.notifications, color: Colors.white),
        //     onPressed: () {},
        //   ),
        // ],
      ),
      // body: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       // const SectionHeader(
      //       //   title: "Categories",
      //       //   seeMore: true,
      //       // ),
      //       // Obx(() => SizedBox(
      //       //   height: 40,
      //       //   child: ListView.builder(
      //       //     scrollDirection: Axis.horizontal,
      //       //     itemCount: categories.length,
      //       //     itemBuilder: (context, index) {
      //       //       final isSelected = controller.selectedCategory.value == index;
      //       //       return GestureDetector(
      //       //         onTap: () {
      //       //           controller.selectedCategory.value = index;
      //       //         },
      //       //         child: Container(
      //       //           margin: const EdgeInsets.only(right: 8),
      //       //           padding: const EdgeInsets.symmetric(
      //       //               horizontal: 16, vertical: 8),
      //       //           decoration: BoxDecoration(
      //       //             color: isSelected
      //       //                 ? Colors.redAccent
      //       //                 : const Color(0xFF222222),
      //       //             borderRadius: BorderRadius.circular(20),
      //       //           ),
      //       //           child: Center(
      //       //             child: Text(
      //       //               categories[index],
      //       //               style: TextStyle(
      //       //                 color: isSelected ? Colors.white : Colors.grey,
      //       //                 fontSize: 14,
      //       //               ),
      //       //             ),
      //       //           ),
      //       //         ),
      //       //       );
      //       //     },
      //       //   ),
      //       // )),
      //       const SizedBox(height: 16),
      //       BannerWidget(),
      //       const SizedBox(height: 16),
      //       const SectionHeader(
      //         title: "Trending Movies",
      //         seeMore: true,
      //       ),
      //       const SizedBox(height: 8),
      //       MovieListWidget(movies: trendingMovies),
      //       const SizedBox(height: 16),
      //       const SectionHeader(
      //         title: "Continue Watching",
      //         seeMore: true,
      //       ),
      //       const SizedBox(height: 8),
      //       MovieListWidget(movies: continueWatching),
      //       const SizedBox(height: 16),
      //       const SectionHeader(
      //         title: "Recommended For You",
      //         seeMore: true,
      //       ),
      //       const SizedBox(height: 8),
      //       MovieListWidget(movies: recommendedMovies),
      //     ],
      //   ),
      // ),
    );
  }
}

// Categories for the header
const List<String> categories = [
  "All",
  "Action",
  "Anime",
  "Sci-fi",
  "Thriller"
];

// Dummy Movie Data
const List<Map<String, String>> trendingMovies = [
  {"title": "Yes I Do", "image": "https://via.placeholder.com/150"},
  {"title": "Inside Out 2", "image": "https://via.placeholder.com/150"},
  {"title": "Fast X", "image": "https://via.placeholder.com/150"},
  {"title": "Babylon", "image": "https://via.placeholder.com/150"},
];

const List<Map<String, String>> continueWatching = [
  {"title": "Wednesday", "image": "https://via.placeholder.com/150"},
  {"title": "Emily in Paris", "image": "https://via.placeholder.com/150"},
];

const List<Map<String, String>> recommendedMovies = [
  {"title": "Double Love", "image": "https://via.placeholder.com/150"},
  {"title": "Sunita", "image": "https://via.placeholder.com/150"},
];

// Reusable Widgets

class SectionHeader extends StatelessWidget {
  final String title;
  final bool seeMore;

  const SectionHeader({super.key, required this.title, this.seeMore = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (seeMore)
          TextButton(
            onPressed: () {},
            child: const Text(
              "See More",
              style: TextStyle(color: Colors.redAccent),
            ),
          ),
      ],
    );
  }
}

class BannerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
          image: NetworkImage("https://via.placeholder.com/400x200"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class MovieListWidget extends StatelessWidget {
  final List<Map<String, String>> movies;

  const MovieListWidget({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 12),
            width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(movies[index]['image']!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  movies[index]['title']!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
