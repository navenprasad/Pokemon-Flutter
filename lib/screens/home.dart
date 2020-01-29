import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../models/pokemon.dart';

class Home extends StatefulWidget {
  static const String id = 'home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Pokemon poke1;
  Pokemon poke2;

  List <Widget> _buildMovesList(Pokemon attackingPokemon, Pokemon defendingPokemon) {
    List<FlatButton> moveButtons = [];
    for (var i = 0; i < attackingPokemon.getMoves().length; i++) {
      print(attackingPokemon.getMoves()[i]);
      var button = FlatButton(
        child: Text(attackingPokemon.getMoves()[i]),
        onPressed: () {
          setState(() {
            attackingPokemon.makeMove(attackingPokemon.getMoves()[i], defendingPokemon);
          });
        },
      );
      print(button);
      moveButtons.add(button);
    }
    print(moveButtons);
    return moveButtons;
  }

  @override
  void initState() {
    super.initState();
    poke1 = Charmander();
    poke2 = Bulbasaur();
    _buildMovesList(poke1, poke2);

    setState(() {
      poke1 = this.poke1;
      poke2 = this.poke2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          Text(
                            poke1.getName(),
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                                decoration: TextDecoration.none),
                          ),
                          Text(
                            "Lvl " + poke1.getLevel().toString(),
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.black87,
                                decoration: TextDecoration.none,
                                textBaseline: TextBaseline.alphabetic),
                          ),
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: new LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width / 2.5,
                              animation: true,
                              lineHeight: 10.0,
                              animationDuration: 1000,
                              percent: poke1.getHP() / poke1.getMaxHP(),
                              leading: Text(
                                "HP : ",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black87,
                                    decoration: TextDecoration.none,
                                    textBaseline: TextBaseline.alphabetic),
                              ),
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Colors.greenAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Image.network(
                      poke1.getImage(),
                      height: 300,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                    child: Image.network(
                      poke2.getImage(),
                      height: 80,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        margin: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Text(
                              poke2.getName(),
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                  decoration: TextDecoration.none),
                            ),
                            Text(
                              "Lvl " + poke2.getLevel().toString(),
                              textDirection: TextDirection.ltr,
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black87,
                                  decoration: TextDecoration.none,
                                  textBaseline: TextBaseline.alphabetic),
                            ),
                            Padding(
                              padding: EdgeInsets.all(0),
                              child: new LinearPercentIndicator(
                                width: MediaQuery.of(context).size.width / 3,
                                animation: true,
                                lineHeight: 10.0,
                                animationDuration: 1000,
                                percent: poke2.getHP() / poke2.getMaxHP(),
                                leading: Text(
                                  "HP : ",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black87,
                                      decoration: TextDecoration.none,
                                      textBaseline: TextBaseline.alphabetic),
                                ),
                                linearStrokeCap: LinearStrokeCap.roundAll,
                                progressColor: Colors.greenAccent,
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
            Center(
              child: Row(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          margin: EdgeInsets.all(20),
                          child: Wrap(
                            children: _buildMovesList(poke2, poke1)
                          )
                          )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
