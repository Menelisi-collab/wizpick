class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestion() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    'Where in Europe is the Allianz Arena located?',
    [
      Answer("Spain", false),
      Answer("England", false),
      Answer("Germany", true),
      Answer("Denmark", false),
    ],
  ));

  list.add(Question(
    'In Formula1, how many laps do C5 tires last?',
    [
      Answer("10 to 20 laps", true),
      Answer("5 to 10 laps", false),
      Answer("30 to 50 laps", true),
      Answer("20 to 30 laps", false),
    ],
  ));

  list.add(Question(
    'The interior of modern cricket pads is made from__________',
    [
      Answer("Bamboo and Plastic", false),
      Answer("Polysterin", false),
      Answer("Wool", false),
      Answer("Cotton and Cane", true),
    ],
  ));

  list.add(Question(
    'The NBA has approximately ___ registered players each season',
    [
      Answer("450", true),
      Answer("900", false),
      Answer("620", false),
      Answer("700", false),
    ],
  ));

  list.add(Question(
    '___________________ has the longest undefeated streak in boxing history',
    [
      Answer("Rocky Marchiano", false),
      Answer("Muhammad Ali", false),
      Answer("Jimmy Barry", true),
      Answer("Floyd Mayweather Jr.", false),
    ],
  ));

  return list;
}
