import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Pokemon List')),
      body: BlocBuilder<PokemonListBloc, PokemonListState>(
        bloc: pokemonListBloc,
        builder: (context, state) {
          if (state is PokemonListLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PokemonListSucess) {
            return Expanded(
              child: ListView.builder(
                itemCount: state.pokemonList.length,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(state.pokemonList[index].name));
                },
              ),
            );
          } else if (state is PokemonListError) {
            return Center(child: Text(state.message));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}