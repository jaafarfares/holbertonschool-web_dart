String longestUniqueSubstring(String str) {
  int start = 0; 
  int end = 0;   
  int maxLength = 0; 
  int maxStart = 0;
  Map<String, int?> charIndexMap = {};

  while (end < str.length) {
    String currentChar = str[end];

    if (charIndexMap.containsKey(currentChar) && charIndexMap[currentChar]! >= start) {
      // Use null-aware operator and null-aware access to handle potential null values.
      start = charIndexMap[currentChar]! + 1;
    }


    charIndexMap[currentChar] = end;

    // Calculate the length of the current window.
    int currentLength = end - start + 1;



    if (currentLength > maxLength) {
      maxLength = currentLength;
      maxStart = start;
    }

    end++; 
  }
  return str.substring(maxStart, maxStart + maxLength);
}
