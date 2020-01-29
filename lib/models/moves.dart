
import 'package:pokemon/models/pokemon.dart';

void dealDamage(Pokemon enemy, double damage){
    enemy.receiveDamage(damage);
}

class AllMoves with BasicMoves, FireMoves {
  void makeMove(String moveName, Pokemon enemy){
    switch(moveName){
      case 'Tackle' : { tackle(enemy); }
      break;

      case 'Scratch' : { scratch(enemy); }
      break;

      case 'Body Slam' : { bodySlam(enemy); }
      break;
      
      case 'Flame Thrower' : { flameThrower(enemy); }
      break;
      
    }
}
}





mixin BasicMoves{
  

  void tackle(Pokemon enemy){
    dealDamage(enemy, 10);
  }

  void scratch(Pokemon enemy){
    dealDamage(enemy, 5);
  }

  void bodySlam(Pokemon enemy){
    dealDamage(enemy, 50);
  }


 
}

mixin FireMoves {

  void flameThrower(Pokemon enemy){
    dealDamage(enemy, 200);
  }

}