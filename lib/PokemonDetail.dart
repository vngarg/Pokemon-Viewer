import 'package:flutter/material.dart';
import 'package:pokemon_app/Pokemon.dart';

class PokeDetail extends StatelessWidget {
  final Pokemon pokemon;

  PokeDetail({this.pokemon});

  @override
  Widget build(BuildContext context) {
    bodyWidget() => Stack(
          children: <Widget>[
            Container(
              child: Card(
                child: Column(
                  children: <Widget>[
                    Text(pokemon.name),
                    Text('Height: ${pokemon.height}'),
                    Text('Weight: ${pokemon.weight}'),
                    Text('Types'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: pokemon.type
                          .map((t) => FilterChip(
                            backgroundColor: Colors.amber,
                                label: Text(t),
                                onSelected: (b) {},
                              ))
                          .toList(),
                    ),
                    Text('Weakness'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: pokemon.weaknesses
                          .map((t) => FilterChip(
                            backgroundColor: Colors.red,
                                label: Text(t , style: TextStyle(color: Colors.white),),
                                onSelected: (b) {},
                              ))
                          .toList(),
                    ),
                    Text('Next Evolution'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: pokemon.nextEvolution
                          .map((n) => FilterChip(
                            backgroundColor: Colors.green,
                                label: Text(n.name , style: TextStyle(color: Colors.white),),
                                onSelected: (b) {},
                              ))
                          .toList(),
                    )
                  ],
                ),
              ),
            )
          ],
        );

    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.cyan,
          title: Center(
            child: Text(pokemon.name),
          )),
      body: bodyWidget(),
    );
  }
}
