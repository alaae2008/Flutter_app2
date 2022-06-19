// ignore_for_file: prefer_final_fields

class Question {
  String question;
  String answer;
  List<String> choices;

  
  Question({
    required this.question,
    required this.answer,
    required this.choices,
  });
}



class QuestionsList {
  int _currentQuestion = 0;
  List<Question> _questionsBank = [
    Question(
      question: 'Sherlock Holmesun birçok macerasında yanında olan yakın dostu ve yardımcısı kimdir?',
      answer: 'Dr.Watson',
      choices: [
        'Hercule Poirot',
        'Dr.Watson',
        'Müfettiş Clouseau',
        'Miss Marple',
      ],
    ),
    Question(
      question: 'Türkiye uluslararası telefon kodu kaçtır?',
      answer: '+90',
      choices: [
        '+49',
        '+90',
        '+970',
        '+1',
      ],
    ),
    Question(
      question: 'Aşağıda verilen ilk çağ uygarlıklarından hangisi yazıyı icat etmiştir?',
      answer: 'Sümerler',
      choices: [
        'Urartular',
        'Hititler',
        'Elamlar',
        'Sümerler',
      ],
    ),
    Question(
      question: 'Aşağıdakilerden hangisi '' Dünya Sağlık Örgütü '' nün kısaltılmış halidir? ',
      answer: 'Who',
      choices: [
        'Nato',
        'Who',
        'Uhn',
        'Uniscef',
      ],
    ),
    Question(
      question: 'Üç Büyük Dince Kutsal Sayılan Şehir Hangisidir',
      answer: 'Küdüs',
      choices: [
        'Küdüs',
        'İstanbul ',
        'Mekke',
        'Roma',
      ],
    ),
    Question(
      question: 'Dünyanın ilk haritasını çizen ünlü Türk denizcisi kimdir?',
      answer: 'Piri Reis',
      choices: [
        'Çaka Beyi',
        'Fatih Sultan Süleyman',
        'Piri Reis',
        'Picasso',
      ],
    ),
    Question(
      question:
          'Telefonun mucidi kimdir?',
      answer: 'Graham Bell',
      choices: [
        'Eistein',
        'Hüseyin Abi',
        'Graham Bell',
        'Naime Abla',
      ],
    ),
    Question(
      question: 'Amerika Kıtası’nı ikiye ayıran önemli su geçitinin adı nedir?',
      answer: 'Panama',
      choices: [
        'Süveyş Kanalı',
        'Ümit Burnu',
        'Panama',
        'Cebelitarık',
      ],
    ),
    Question(
      question: 'Dünyanın en yüksek şelaleleri ?',
      answer: 'Angel',
      choices: [
        'Niagara',
        'Iguazu',
        'Ouzoud',
        'Angel',
      ],
    ),
    Question(
      question: 'Mona Lisa"yı 1911"de Louvre"dan çalanı kimdir?',
      answer: 'Vincenzo Peruggia',
      choices: [
        'Vincenzo Peruggia',
        'Enzo Fratelli',
        'Vittorio Boca',
        'Lucio Antonini',
      ],
    ),
    Question(
      question: 'Türk tarihinin en ünlü mimarı kimdir?',
      answer: 'Mimar Sinan',
      choices: [
        'Zaha Hadid',
        'Mimar Sinan',
        'Necip Dinç',
        'Mimar Hayreddin',
      ],
    ),
  ];


  String getQuestion() => _questionsBank[_currentQuestion].question;
  String getAnswer() => _questionsBank[_currentQuestion].answer;
  String getChoiceOne() => _questionsBank[_currentQuestion].choices[0];
  String getChoiceTwo() => _questionsBank[_currentQuestion].choices[1];
  String getChoiceThree() => _questionsBank[_currentQuestion].choices[2];
  String getChoiceFour() => _questionsBank[_currentQuestion].choices[3];


  bool nextQuestion() {
    if (_currentQuestion < 10) {

      _currentQuestion++;
      return true;
    } else {
      _currentQuestion = 0;
      return false;
    }
  }
  void removTowOption() {
    int counter = 0;
    int myCoun = 0;
    for (counter = 0; counter <= 3; counter++) {
      if (_questionsBank[_currentQuestion].choices[counter] !=
              _questionsBank[_currentQuestion].answer &&
          myCoun <= 1) {
        _questionsBank[_currentQuestion].choices[counter] = '  ';
        myCoun++;
      }
    }
  }
  void replaceQuestion() {
    _currentQuestion++;
  }
}

