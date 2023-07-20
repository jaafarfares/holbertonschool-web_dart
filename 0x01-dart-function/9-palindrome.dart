bool isPalindrome(String s) {

  if (s.length < 3) {
    return false;
  }


  String cleanedString = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();


  return cleanedString == cleanedString.split('').reversed.join('');
}
