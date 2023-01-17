extension StringExtensions on String {

  String truncate(int length) {
    if (this.length > length) {
      return this.substring(0, length) + "...";
    }
    return this;
  }

  String upperCaseFirstLetter() {
    return this[0].toUpperCase() + this.substring(1);
  }

  String reverse() {
    return this.split('').reversed.join();
  }

  int countVowels() {
    return this.toLowerCase().split('').where((c) => 'aeiou'.contains(c)).length;
  }

  String removeSpaces() {
    return this.replaceAll(RegExp(r'\s+'), "");
  }

  String urlEncode() {
    return Uri.encodeComponent(this);
  }

  String replaceChar(String oldChar, String newChar) {
    return this.replaceAll(oldChar, newChar);
  }

  bool isNumeric() {
    if(this == null) {
      return false;
    }
    return double.tryParse(this) != null;
  }

  bool isEmail() {
    final RegExp emailRegex = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
    return emailRegex.hasMatch(this);
  }

  bool isPhoneNumber() {
    final RegExp phoneRegex = RegExp(r'^(?:[+0]9)?[0-9]{10}$');
    return phoneRegex.hasMatch(this);
  }


  String removeSpecialCharacters() {
    return this.replaceAll(RegExp(r"[^a-zA-Z0-9 ]"), "");
  }

  /// You can create an extension method to check if a string is a palindrome
  bool isPalindrome() {
    return this.toLowerCase() == this.toLowerCase().split('').reversed.join();
  }

  /// You can create an extension method to count the number of words in a string
  int wordCount() {
    return this.split(" ").length;
  }

  /// Method to abbreviate a string by taking the first letter of each word
  String abbreviation() {
    return this.split(" ").map((word) => word[0]).join().toUpperCase();
  }

}
