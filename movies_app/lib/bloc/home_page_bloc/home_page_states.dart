import 'package:movies_app/models/movie_model/movie_model.dart';

abstract class HomePageStates{}
class HomePageErrorState extends HomePageStates{}
class HomePageLoadingState extends HomePageStates{}
class HomePageLoadedState extends HomePageStates{
  Movie movieList;
  HomePageLoadedState({required this.movieList});
}