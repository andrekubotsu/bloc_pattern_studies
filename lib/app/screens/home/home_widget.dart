import 'package:bloc_app_studies/app/app_module.dart';
import 'package:bloc_app_studies/app/shared/models/pokemon_model.dart';
import 'package:flutter/material.dart';

import '../../app_bloc.dart';
import 'components/custom_drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Pokemon> listPokemons = [
    Pokemon(name: "Charmander"),
    Pokemon(name: "Pikachu"),
    Pokemon(name: "Charizard"),
    Pokemon(name: "Bubasaur"),
    Pokemon(name: "MewTwo"),
  ];

  Widget _buildList() {
    return ListView.separated(
      itemCount: listPokemons.length,
      itemBuilder: (context, index) {
        return _buildItem(listPokemons[index]);
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
    );
  }

  Widget _buildItem(Pokemon model) {
    return ListTile(
      title: Text(model.name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text("Pokemon"),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              AppModule.to.bloc<AppBloc>().changeTheme();
            },
            icon: const Icon(Icons.add_shopping_cart),
          )
        ],
      ),
      body: _buildList(),
    );
  }
}
