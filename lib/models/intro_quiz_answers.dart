class IntroQuizAnswers {
  String hair_porosity;
  String hair_density;
  String curl_pattern;
  String hair_structure;
  String hair_length;

  static final IntroQuizAnswers _singleton = IntroQuizAnswers._internal();

  factory IntroQuizAnswers() {
    return _singleton;
  }

  IntroQuizAnswers._internal();

  String get hairPorosity {
    return hair_porosity;
  }
  void set hairPorosity(String hairPorosity) {
    hair_porosity = hairPorosity;
  }

  String get hairDensity {
    return hair_density;
  }
  void set hairDensity(String hairDensity) {
    hair_density = hairDensity;
  }

  String get curlPattern {
    return curl_pattern;
  }
  void set curlPattern(String curlPattern) {
    curl_pattern = curlPattern;
  }

  String get hairStructure {
    return hair_structure;
  }
  void set hairStructure(String hairStructure) {
    hair_structure = hairStructure;
  }

  String get hairLength {
    return hair_length;
  }
  void set hairLength(String hairLength) {
    hair_length = hairLength;
  }


}