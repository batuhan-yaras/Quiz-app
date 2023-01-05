import 'package:quizzler_updated/main.dart';
import 'question.dart';

class QuizBrain{
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('In the animation film “Finding Nemo”, the main protagonist is a pufferfish. ', false),
    Question('Is Mount Kilimanjaro the world\’s tallest peak?', false),
    Question('Spaghetto is the singular form of the word spaghetti.', true),
    Question('Pinocchio was Walt Disney\’s first animated feature film in full color.', false),
    Question('The capital of Australia is Sydney.', false),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question('Walt Disney has the record for most Academy Awards.', true),
    Question('In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.', true),
    Question('The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.', false),
    Question('Daily, your nose and sinuses create almost one liter of mucus.', true),
    Question('Google was originally called \"Backrub\".', true),
    Question('Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.', true),
    Question('In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.', true),
  ];

  void nextQuestion(){
    if (_questionNumber < _questionBank.length-1){
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool Finished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }
  void reset(){
    _questionNumber = 0;
  }
}


