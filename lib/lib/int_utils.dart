extension IntExtensions on int {

  bool isEven() => this % 2 == 0;
  bool isOdd() => this % 2 != 0;
  int factorial() {
    if (this <= 1) return 1;
    return this * (this - 1).factorial();
  }

  String? toRoman() {
    final romanValues = [
      'M',
      'CM',
      'D',
      'CD',
      'C',
      'XC',
      'L',
      'XL',
      'X',
      'IX',
      'V',
      'IV',
      'I'
    ];
    final romanValuesInt = [
      1000,
      900,
      500,
      400,
      100,
      90,
      50,
      40,
      10,
      9,
      5,
      4,
      1
    ];
    final res = StringBuffer();
    var number = this;
    for (var i = 0; i < romanValues.length; i++) {
      final val = romanValuesInt[i];
      while (number >= val) {
        res.write(romanValues[i]);
        number -= val;
      }
    }
  }

}