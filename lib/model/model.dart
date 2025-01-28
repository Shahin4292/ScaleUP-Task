import 'package:scale_up_task/Res/assets/app_assets.dart';

class Movies {
  final String imageUrl;
  final String name;

  Movies({
    required this.imageUrl,
    required this.name,
  });
}

class MovieRepository {
  List<Movies> trendingMovies() {
    return [
      Movies(name: 'UB’s Secret', imageUrl: AppAssets.secret),
      Movies(name: 'Yes I Do', imageUrl: AppAssets.yes),
      Movies(name: 'Inside Out 2', imageUrl: AppAssets.inside),
      Movies(name: 'Babylon', imageUrl: AppAssets.sunita),
    ];
  }

  List<Movies> continueWatching() {
    return [
      Movies(
          name: "Wednesday | Season - 1|\n Episode - 3",
          imageUrl: AppAssets.wednesday),
      Movies(
          name: "Emily in Paris | Season - 1|\n Episode - 1",
          imageUrl: AppAssets.emly),
    ];
  }

  List<Movies> recommended() {
    return [
      Movies(name: 'Double Love', imageUrl: AppAssets.double),
      Movies(name: 'Sunita', imageUrl: AppAssets.sunita),
      Movies(name: 'Pokemon', imageUrl: AppAssets.pokemon),
    ];
  }
}
