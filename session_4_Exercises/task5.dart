void main() {
  print(longestWord("My name is Mohamed"));
}

String longestWord(String sentence) {
  return sentence.split(' ').reduce((a, b) => a.length >= b.length ? a : b);
}
