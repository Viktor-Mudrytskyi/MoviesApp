import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/api/new_movies_api/new_movies_api.dart';
import 'package:movies_app/bloc/home_page_bloc/home_page_events.dart';
import 'package:movies_app/bloc/home_page_bloc/home_page_states.dart';

class HomePageBloc extends Bloc<HomePageEvents,HomePageStates>{
  HomePageBloc():super(HomePageLoadingState()){
    on<HomePageLoadEvent>((event, emit)async{
      final movies=await NewMoviesApi.fetchNewMovies();
      emit(HomePageLoadedState(movieList: movies));
    });

    
  }
  
}