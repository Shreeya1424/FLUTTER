import 'dart:io';

Map<String, int> countWordOccurrences(String sentence) {
  List<String> words = sentence.split(' ');
  Map<String, int> wordCount = {};

  for (String word in words) {
    if (wordCount.containsKey(word)) {
      wordCount[word] = wordCount[word]! + 1;
    } else {
      wordCount[word] = 1;
    }
  }

  return wordCount;
}

void main() {
  print("Enter a sentence:");
  String sentence = stdin.readLineSync()!;

  Map<String, int> wordOccurrences = countWordOccurrences(sentence);

  print("The word occurrences are: $wordOccurrences");
}
