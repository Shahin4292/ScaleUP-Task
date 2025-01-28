import 'package:get/get.dart';
import 'package:scale_up_task/model/model.dart';

class DashboardController extends GetxController {
  MovieRepository movieRepository = MovieRepository();
  var selectedCategory = "All".obs;
  var trendingMovie = <Movies>[].obs;
  var continuesWatching = <Movies>[].obs;
  var recommendedMovie = <Movies>[].obs;
  final List<String> categories = [
    "All",
    "Action",
    "Anime",
    "Sci-fi",
    "Thriller"
  ];

  @override
  void onInit() {
    super.onInit();
    fetchMovies();
  }

  void selectCategory(String category) {
    selectedCategory.value = category;
  }

  void fetchMovies() {
    trendingMovie.value = movieRepository.trendingMovies();
    continuesWatching.value = movieRepository.continueWatching();
    recommendedMovie.value = movieRepository.recommended();
  }
}
