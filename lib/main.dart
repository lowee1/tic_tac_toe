// basic tic tac toe app

import 'package:flutter/material.dart';

void main() {
  runApp(const Tictactoe());
}

class Tictactoe extends StatelessWidget {
  const Tictactoe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: TictactoePage(),
      ),
    );
  }
}

// tictactoe page
class TictactoePage extends StatefulWidget {
  const TictactoePage({Key? key}) : super(key: key);

  @override
  _TictactoePageState createState() => _TictactoePageState();
}

class _TictactoePageState extends State<TictactoePage> {
  // board
  List<List<int>> board = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
  ];

  // current player
  int currentPlayer = 1;

  // play
  void play(int row, int col) {
    // check if the cell is occupied and show an error popup
    if (board[row][col] != 0) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('This cell is already occupied'),
            actions: <Widget>[
              TextButton(
                child: const Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        },
      );
    } else {
      // update the board
      setState(() {
        board[row][col] = currentPlayer;
        // change the current player
        currentPlayer = currentPlayer == 1 ? 2 : 1;
      });
    }
  }

  // check winner
  int checkWinner() {
    for (int i = 0; i < 3; i++) {
      if (board[i][0] != 0 &&
          board[i][0] == board[i][1] &&
          board[i][1] == board[i][2]) {
        return board[i][0];
      }
      if (board[0][i] != 0 &&
          board[0][i] == board[1][i] &&
          board[1][i] == board[2][i]) {
        return board[0][i];
      }
    }
    if (board[0][0] != 0 &&
        board[0][0] == board[1][1] &&
        board[1][1] == board[2][2]) {
      return board[0][0];
    }
    if (board[0][2] != 0 &&
        board[0][2] == board[1][1] &&
        board[1][1] == board[2][0]) {
      return board[0][2];
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // game board
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // row 1
              Column(
                children: <Widget>[
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ElevatedButton(
                      child: Text(
                        board[0][0] == 0 ? '' : board[0][0].toString(),
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        play(0, 0);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ElevatedButton(
                      child: Text(
                        board[0][1] == 0 ? '' : board[0][1].toString(),
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        play(0, 1);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ElevatedButton(
                      child: Text(
                        board[0][2] == 0 ? '' : board[0][2].toString(),
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        play(0, 2);
                      },
                    ),
                  ),
                ],
              ),
              // row 2
              Column(
                children: <Widget>[
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ElevatedButton(
                      child: Text(
                        board[1][0] == 0 ? '' : board[1][0].toString(),
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        play(1, 0);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ElevatedButton(
                      child: Text(
                        board[1][1] == 0 ? '' : board[1][1].toString(),
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        play(1, 1);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ElevatedButton(
                      child: Text(
                        board[1][2] == 0 ? '' : board[1][2].toString(),
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        play(1, 2);
                      },
                    ),
                  ),
                ],
              ),
              // row 3
              Column(
                children: <Widget>[
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ElevatedButton(
                      child: Text(
                        board[2][0] == 0 ? '' : board[2][0].toString(),
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        play(2, 0);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ElevatedButton(
                      child: Text(
                        board[2][1] == 0 ? '' : board[2][1].toString(),
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        play(2, 1);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ElevatedButton(
                      child: Text(
                        board[2][2] == 0 ? '' : board[2][2].toString(),
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        play(2, 2);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          // winner
          Text(
            checkWinner() == 0 ? 'No Winner' : 'Winner is ${checkWinner()}',
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          // reset button
          ElevatedButton(
              child: const Text("Reset"),
              onPressed: () {
                // reset board
                board = [
                  [0, 0, 0],
                  [0, 0, 0],
                  [0, 0, 0],
                ];

                // reset screen
                setState(() {});
              })
        ],
      ),
    );
  }
}
