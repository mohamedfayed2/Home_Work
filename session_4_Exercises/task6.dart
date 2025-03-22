void main() {
  print(countWords("My name is Mohamed"));
}

int countWords(String sentence) {
  String cleanedSentence = sentence.trim();

  if (cleanedSentence.isEmpty) return 0;

  List<String> words = cleanedSentence.split(' ');

  words.removeWhere((word) => word.isEmpty);

  return words.length;
}
