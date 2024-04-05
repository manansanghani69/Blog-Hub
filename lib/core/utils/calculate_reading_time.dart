int calculateReadingTime(String content) {
  final wordCnt = content.split(RegExp(r'\s+')).length;
  final readTime = wordCnt / 225;
  return readTime.ceil();
}
