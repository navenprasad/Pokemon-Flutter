import 'package:pokemon/models/moves.dart';

abstract class Pokemon extends AllMoves{

  String _name = "None";
  int _level = 1;
  double _maxHp = 0;
  double _hp = 0;
  String _imageUrl = "";

  List <String> _moves = [];

  String getName(){
    return this._name;
  }

  double getHP(){
    return this._hp;
  }

  double getMaxHP(){
    return this._maxHp;
  }

  void receiveDamage(double damage){
    this._hp = this._hp - damage;
  }

  int getLevel(){
    return this._level;
  }

  void levelUp(){
    this._level ++;
  } 

  List <String> getMoves(){
    return this._moves;
  }

  String getImage(){
    return this._imageUrl;
  }

}


class Charmander extends Pokemon{

  Charmander(){
    this._name = "Charizard";
    this._moves = ['Tackle', 'Scratch', 'Flame Thrower'];
    this._maxHp = 200;
    this._hp = 200;
    this._level = 36;
    this._imageUrl = "http://www.pokestadium.com/sprites/xy/charizard-3.gif";
  }

}


class Bulbasaur extends Pokemon {
  Bulbasaur(){
    this._name = "Bulbasaur";
    this._moves = ['Tackle', 'Scratch', 'Razor Leaf',];
    this._maxHp = 200;
    this._hp = 200;
    this._imageUrl = "http://www.pokestadium.com/sprites/xy/back/bulbasaur.gif";
  }
  
}