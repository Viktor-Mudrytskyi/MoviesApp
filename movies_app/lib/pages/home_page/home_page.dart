import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/bloc/home_page_bloc/home_page_bloc.dart';
import 'package:movies_app/bloc/home_page_bloc/home_page_events.dart';
import 'package:movies_app/bloc/home_page_bloc/home_page_states.dart';
import 'widgets/home_page_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageBloc(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            'Currently airing',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Chips(),
                  ),
                  BlocBuilder<HomePageBloc, HomePageStates>(
                    builder: ((context, state) {
                      if (state is HomePageLoadingState) {
                        log('event added');
                        context.read<HomePageBloc>().add(HomePageLoadEvent());
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        return NewMoviesList(
                            movies: (state as HomePageLoadedState).movieList);
                      }
                    }),
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
