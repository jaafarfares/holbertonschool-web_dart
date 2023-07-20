String longestUniqueSubstring(String str) {
  int start = 0;
  int end = 0;   
  int maxLength = 0;
  int maxStart = 0; 
  Map<String, int> charIndexMap = {};

  while (end < str.length) {
    String currentChar = str[end];

    if (charIndexMap.containsKey(currentChar) && charIndexMap[currentChar] >= start) {


      start = charIndexMap[currentChar] + 1;
    }


    charIndexMap[currentChar] = end;


    int currentLength = end - start + 1;



    if (currentLength > maxLength) {
      maxLength = currentLength;
      maxStart = start;
    }

    end++; // Move the end index to the right to expand the window.
  }

  // Extract the longest unique substring from the original string based on the starting index and length.
  return str.substring(maxStart, maxStart + maxLength);
}
