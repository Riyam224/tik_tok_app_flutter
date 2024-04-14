// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:xo_task/views/game_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

// todo
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
final TextEditingController player1Controller = TextEditingController();
final TextEditingController player2Controller = TextEditingController();

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xff781D42),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Heading.png'),
          ),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                  left: 100,
                  right: 100,
                ),
                child: TextFormField(
                  controller: player1Controller,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.white,
                    )),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    hintText: 'Player One  Name ',
                    filled: true,
                    hintStyle: TextStyle(
                      color: Color(0xff781D42),
                      fontSize: 15,
                      fontFamily: 'LeagueSpartan',
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter player one name";
                    }
                    return null;
                  },
                ),
              ),
              // TODO

              Padding(
                padding: const EdgeInsets.only(
                  bottom: 30,
                  left: 100,
                  right: 100,
                ),
                child: TextFormField(
                  controller: player2Controller,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.white,
                    )),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    hintText: 'Player Two  Name ',
                    filled: true,
                    hintStyle: TextStyle(
                      color: Color(0xff781D42),
                      fontSize: 15,
                      fontFamily: 'LeagueSpartan',
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter player two name";
                    }
                    return null;
                  },
                ),
              ),
              // TODO
              InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => GameView(
                                  player1: player1Controller.text,
                                  player2: player1Controller.text)));
                    }
                  },
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffde834d),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'start the game ',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'LeagueSpartan',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
