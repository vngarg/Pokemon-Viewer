import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; 
import 'dart:convert';

void main() => runApp(MaterialApp(
  title:"Pokemon App",
  home: HomePage(),
  debugShowCheckedModeBanner: false,
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var url = 'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  @override
  void initState() {
    super.initState();

    fetchData();
    print('2nd Work');
  }

  fetchData() async{
    var res = await http.get(url);
    var decodedJson = jsonDecode(res.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(
          child: Text('Pokemon App'),
        ),
        backgroundColor: Colors.cyan,
      ),
      drawer: Drawer(),
      body: Center(
        child: Text('HELLO WORLD'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.cyan,
        child: Icon(Icons.refresh),
      ),
    );
  }
}
