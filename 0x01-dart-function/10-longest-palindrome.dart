bool isPalindrome(String s) {

  if (s.length < 3) {
    return false;
  }


  String cleanedString = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();


  return cleanedString == cleanedString.split('').reversed.join('');
}

String longestPalindrome(String s) {
  String longest = "none";

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j <= s.length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring) && substring.length > longest.length) {
        longest = substring;
      }
    }
  }

  return longest;
}
