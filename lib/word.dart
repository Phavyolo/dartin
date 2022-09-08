void main() {
  getWord(["P>E", "E>R", "R>U"]); // PERU
  getWord(["I>N", "A>I", "P>A", "S>P"]); // SPAIN
  getWord(["U>N", "G>A", "R>Y", "H>U", "N>G", "A>R"]); // HUNGARY
  getWord(["I>F", "W>I", "S>W", "F>T"]); // SWIFT
  getWord(["R>T", "A>L", "P>O", "O>R", "G>A", "T>U", "U>G"]); // PORTUGAL
  getWord(["U>N", "G>A", "R>Y", "H>U", "N>G", "A>R"]); // HUNGARY
  getWord(["I>F", "W>I", "S>W", "F>T"]); // SWIFT
  getWord(["R>T", "A>L", "P>O", "O>R", "G>A", "T>U", "U>G"]); // PORTUGAL
  getWord([
    "W>I",
    "R>L",
    "T>Z",
    "Z>E",
    "S>W",
    "E>R",
    "L>A",
    "A>N",
    "N>D",
    "I>T"
  ]); // SWITZERLAND
}

String getWord(List<String> input) {
  Map<String, String> map = {};
  var word = StringBuffer();

  for (var item in input) {
    map[item[0]] = item[2];
  }

  String? firstChar = findFirstWord(input);

  while (firstChar != null) {
    word.write(firstChar);
    firstChar = map[firstChar];
  }

  print(word.toString());
  print("-------------------------------");
  return word.toString();
}

String findFirstWord(List<String> input) {
  List first = [];
  List second = [];
  int? idx = 0;
  String? firstChar;

  for (var item in input) {
    first.add(item[0]);
    second.add(item[2]);
  }
  print(first);
  print(second);

  while (idx != null) {
    firstChar = first[idx];
    idx = findNextIdx(firstChar!, second);
  }

  return firstChar!;
}

int? findNextIdx(String letter, List second) {
  int? idx;
  for (int i = 0; i < second.length; i++) {
    if (letter == second[i]) {
      idx = i;
      break;
    }
  }

  return idx;
}
