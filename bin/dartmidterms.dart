import 'dart:io';
import 'dart:math';
import 'package:emojis/emojis.dart';
import 'package:emojis/emoji.dart';

int playerScore = 0;
int computerScore = 0;
int tiesScore = 0;
Emoji rock = Emoji.byChar(Emojis.mountain);
Emoji paper = Emoji.byChar(Emojis.scroll);
Emoji scissors = Emoji.byChar(Emojis.scissors);

String getPlayerMove() {
  print("What's your pick?");
  String selection = stdin.readLineSync().toLowerCase();

  switch (selection) {
    case "bato":
      return "$rock";
      break;
    case "papel":
      return "$paper";
      break;
    case "gunting":
      return "$scissors";
      break;
    default:
      return "Quit";
      break;
  }
}

String getComputerMove() {
  Random rand = new Random();
  int move = rand.nextInt(3);

  switch (move) {
    case 0:
      return "$rock";
      break;
    case 1:
      return "$paper";
      break;
    case 2:
      return "$scissors";
      break;
    default:
      break;
  }
}

String whoWon(String playerMove, String computerMove) {

  if (playerMove == computerMove) {
    tiesScore++;
    return "Tie! You: $playerScore, Bot: $computerScore, Tie: $tiesScore ";
  } else if (playerMove == "$rock" && computerMove == "$scissors") {
    playerScore++;
    return "You Win! You: $playerScore, Bot: $computerScore, Tie: $tiesScore ";
  } else if (playerMove == "$paper" && computerMove == "$rock") {
    playerScore++;
    return "You Win! You: $playerScore, Bot: $computerScore, Tie: $tiesScore ";
  } else if (playerMove == "$scissors" && computerMove == "$paper") {
    playerScore++;
    return "You Win! You: $playerScore, Bot: $computerScore, Tie: $tiesScore ";
  } else if (playerMove == "$paper" && computerMove == "$scissors") {
   computerScore++;
    return "Bot Wins! You: $playerScore, Bot: $computerScore, Tie: $tiesScore ";
  } else if (playerMove == "$rock" && computerMove == "$paper") {
    computerScore++;
    return "Bot Wins! You: $playerScore, Bot: $computerScore, Tie: $tiesScore ";
  } else if (playerMove == "$scissors" && computerMove == "$rock") {
    computerScore++;
    return "Bot Wins! You: $playerScore, Bot: $computerScore, Tie: $tiesScore ";
  } else {
    computerScore++;
    return "Bot Wins! You: $playerScore, Bot: $computerScore, Tie: $tiesScore ";
  }
}

void main() {
  while (true) {
    print("+____________________________________+");
    print("Papel, Gunting, Bato!");
    String playerMove = getPlayerMove();
    print("You played $playerMove");

    String computerMove = getComputerMove();
    print("Bot played $computerMove");
    print(whoWon(playerMove, computerMove));

    if (playerMove == "Quit") {
      return;
    }
  }
}