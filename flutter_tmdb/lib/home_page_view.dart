import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tmdb/core/services/movie_service.dart';
import 'package:flutter_tmdb/features/bloc/popular_movies_bloc.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  late PopularMoviesBloc popularMoviesBloc;


  @override
  void initState(){
    super.initState();
    popularMoviesBloc = PopularMoviesBloc(MovieService())..add(LoadPopularMovies());
  }

   @override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Movies')),
      body: BlocBuilder<PopularMoviesBloc, PopularMoviesState>(
        bloc:PopularMoviesBloc,
        builder: (context, state) {
          if (state is PopularMovieLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PopularMovieSuccess) {
            return Expanded(
              child: ListView.builder(
                itemCount: state.movieList.length,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(state.movieList[index].title));
                },
              ),
            );
          } else if (state is PopularMovieError) {
            return Center(child: Text(state.message));
          }
          return const Center(child: CircularProgressIndicator());
        },
      )
    );
  }
}
