String extractValueFromUrl(String url) {
  final parts = url.split('/');
  final value = parts[parts.length - 2];
  return value;
}

String completeNumberWithZeros(int number) {
  String numberString = number.toString();
  if (numberString.length >= 3) {
    return numberString.substring(0, 3);
  }
  int zerosToAdd = 3 - numberString.length;
  String zeros = '0' * zerosToAdd;

  return '$zeros$numberString';
}
