import 'package:flutter/material.dart';
import 'package:flutter_pokemon/widgets/app_title.dart';
import 'package:flutter_pokemon/widgets/pokemon_list.dart';

class HomePages extends StatelessWidget {
 
   const HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) => Column(
          children: [
            AppTitle(),
              Expanded(child: PokemonList()),
          ],
        ),
      ),
    );
  }
}
