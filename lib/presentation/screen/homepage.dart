import 'package:flutter/material.dart';
import 'package:pokemon/services/pokemon_service.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
 
  @override
  Widget build(BuildContext context) {
    
  final pokemonServices = Provider.of<HeroesServices>(context);
print(pokemonServices);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon', style: TextStyle(fontWeight: FontWeight.w800),),    
      ),
      body: ListView.builder(  
        itemCount: pokemonServices.heroesResults.length,
        itemBuilder: (context , index){
          final pokemons =  pokemonServices.heroesResults[index];
          return   ListTile(
            title:  Text(pokemons.name),
            subtitle: Text(pokemons.type),
            leading:   FadeInImage(
              placeholder: const  AssetImage('assets/loading.gif'),
              image: NetworkImage(pokemons.image)));
      }),
    );
  }
}

// 366549114878522eb480ece912fc357b