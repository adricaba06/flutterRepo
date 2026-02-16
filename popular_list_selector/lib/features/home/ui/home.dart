import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:popular_list_selector/core/services/movie_list_service.dart';
import 'package:popular_list_selector/core/services/top_rated_movie_list_service.dart';
import 'package:popular_list_selector/features/home/bloc/movie_bloc/movie_bloc.dart';
import 'package:popular_list_selector/features/home/bloc/tv_bloc/top_rated_bloc.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  bool showPopular = true;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MovieBloc>(
          create: (context) => MovieBloc(MovieListService())..add(FetchMovieList()),
        ),
        BlocProvider<TopRatedBloc>(
          create: (context) => TopRatedBloc(TopRatedMovieListService())..add(FetchTopRatedList()),
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => setState(() => showPopular = true),
                    style: ElevatedButton.styleFrom(backgroundColor: showPopular ? Colors.blue.shade100 : null),
                    child: const Text("Populares"),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => setState(() => showPopular = false),
                    style: ElevatedButton.styleFrom(backgroundColor: !showPopular ? Colors.blue.shade100 : null),
                    child: const Text("Top Rated"),
                  ),
                ],
              ),
              
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  showPopular ? "Popular Movies" : "Top Rated Movies", 
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                ),
              ),

              Expanded(
                child: Builder(
                  builder: (context) {
                    if (showPopular) {
                      final state = context.watch<MovieBloc>().state;
                      if (state is PopularMovieLoading) return const Center(child: CircularProgressIndicator());
                      if (state is PopularMovieLoaded) {
                        return _MovieListView(movies: state.movies);
                      }
                      return const Center(child: Text("Cargando populares"));
                    } else {
                      final state = context.watch<TopRatedBloc>().state;
                      if (state is TopRatedLoading) return const Center(child: CircularProgressIndicator());
                      if (state is TopRatedLoaded) {
                        return _MovieListView(movies: state.movies);
                      }
                      return const Center(child: Text("Cargando top rated movies"));
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MovieListView extends StatelessWidget {
  final List movies;
  const _MovieListView({required this.movies});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return Column(
          children: [
            Image.network("https://image.tmdb.org/t/p/w500${movie.posterPath}"),
            ListTile(
              title: Text(movie.title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
              subtitle: Text(movie.overview, maxLines: 2, overflow: TextOverflow.ellipsis),
            ),
          ],
        );
      },
    );
  }
}