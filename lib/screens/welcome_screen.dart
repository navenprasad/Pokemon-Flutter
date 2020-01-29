// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// import 'package:percent_indicator/linear_percent_indicator.dart';
// import 'package:pokemon/models/pokemon.dart';


// class Moves extends StatefulWidget {
//   final Pokemon firstPokemon;
//   final Pokemon secondPokemon;

//   const Moves({Key key, this.firstPokemon, this.secondPokemon}) : super(key: key);
//   @override
//   _MovesState createState() => _MovesState();
// }

// class _MovesState extends State<Moves> {
//   Pokemon first;
//   Pokemon second;
//   List<Widget> get movesList => null;

//   @override
//   void initState() { 
//     super.initState();
//     setState(() {
//       first = widget.firstPokemon;
//       second = widget.secondPokemon;
//     });
//   }


//   List<Widget> _buildButtonsWithFirstMoves(Pokemon firstP, Pokemon secondP) {
    
//     List<FlatButton> firstMovesList = new List<FlatButton>();
//     for (int i = 0; i < firstP.getMoves().length; i++) {
//       print(firstP.getMoves()[i]);

//       firstMovesList.add(new FlatButton(
//         onPressed: (){

//           setState(() {
//             first.makeMove(pokemon.getMoves()[i], _secondPokemon);
//           });
//         }, 
//         child: Text(pokemon.getMoves()[i], style: TextStyle(color: Colors.white, fontSize: 20),) 
//       ));
//     }
//      return firstMovesList;
//    }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       Wrap(children: <Widget>[
//         _buildButtonsWithFirstMoves(pokemon)
//       ],)
//     );
//   }
// }



// // class WelcomeScreen extends StatefulWidget {
// //   static const String id = 'welcome_string';
// //   @override
// //   _WelcomeScreenState createState() => _WelcomeScreenState();
// // }

// // class _WelcomeScreenState extends State<WelcomeScreen> {

// //   Pokemon _firstPokemon;
// //   Pokemon _secondPokemon;

// //   List<Widget> get firstMovesList => null;
// //   List<Widget> get secondMovesList => null;

  

// //   @override
// //   void initState() { 
// //     super.initState();
// //     _firstPokemon = Charmander();
// //     _secondPokemon = Bulbasaur();
    
// //     setState(() {
// //       _firstPokemon = this._firstPokemon;
// //       _secondPokemon = this._secondPokemon;
// //     });
// //   }


// //    List<Widget> _buildButtonsWithFirstMoves(Pokemon pokemon) {
    
// //     List<FlatButton> firstMovesList = new List<FlatButton>();
// //     for (int i = 0; i < pokemon.getMoves().length; i++) {
// //       print(pokemon.getMoves()[i]);

// //       firstMovesList.add(new FlatButton(
// //         onPressed: (){

// //           setState(() {
// //             pokemon.makeMove(pokemon.getMoves()[i], _secondPokemon);
// //           });
// //         }, 
// //         child: Text(pokemon.getMoves()[i], style: TextStyle(color: Colors.white, fontSize: 20),) 
// //       ));
// //     }
// //      return firstMovesList;
// //    }

