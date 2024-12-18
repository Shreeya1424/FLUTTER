String findLastWord(String s) {
  s = s.trim();
  List<String> words = s.split(' ');
  return words.isNotEmpty ? words.last : '';
}

int lengthOfLastWord(String s) {
  String lastWord = findLastWord(s);
  return lastWord.length;
}

void main() {
  String s1 = "Hello World";
  String s2 = " fly me to the moon ";

  print('Length of last word in "\$s1": \${lengthOfLastWord(s1)}');
  print('Length of last word in "\$s2": \${lengthOfLastWord(s2)}');
}
