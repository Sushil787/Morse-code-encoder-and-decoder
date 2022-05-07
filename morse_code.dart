class MorseCode {
  Map morseCodeMap = {
    'A': '.-',
    'B': '-...',
    'C': '-.-.',
    'D': '-..',
    'E': '.',
    'F': '..-.',
    'G': '--.',
    'H': '....',
    'I': '..',
    'J': '.---',
    'K': '-.-',
    'L': '.-..',
    'M': '--',
    'N': '-.',
    'O': '---',
    'P': '.--.',
    'Q': '--.-',
    'R': '.-.',
    'S': '...',
    'T': '-',
    'U': '..-',
    'V': '...-',
    'W': '.--',
    'X': '-..-',
    'Y': '-.--',
    'Z': '--..',
    '1': '.----',
    '2': '..---',
    '3': '...--',
    '4': '....-',
    '5': '.....',
    '6': '-....',
    '7': '--...',
    '8': '---..',
    '9': '----.',
    '0': '-----',
    ', ': '--..--',
    '.': '.-.-.-',
    '?': '..--..',
    '/': '-..-.',
    '-': '-....-',
    '(': '-.--.',
    ')': '-.--.-'
  };
  // Lsit reverseMap = morseCodeMap.forEach((key, value) { "$value $key";});

  String? value = "";
  String? value2 = "";
  MorseCode([this.value, this.value2]);
  String enCode() {
    var name = value!.toUpperCase();
    var morseCode = "";
    var listString = name.split("");
    var indexList = morseCodeMap.keys.toList();
    // print(indexList.indexOf(" "));
    for (int i = 0; i < listString.length; i++) {
      if (listString[i] == " ") {
        morseCode += "/ ";
      } else {
        morseCode +=
            (morseCodeMap.values.elementAt(indexList.indexOf(listString[i])) +
                " ");
      }
    }
    return (morseCode);
  }

  deCode() {
    var mName = value2!.split(" ");
    int j = 0;
    String decodedMorse = "";
    for (j; j < mName.length; j++) {
      if (mName[j] == "/") {
        decodedMorse += " ";
      } else {
        int indexofMorse = morseCodeMap.values.toList().indexOf(mName[j]);
        var correspondingAlphaValue = morseCodeMap.keys.toList()[indexofMorse];
        decodedMorse += correspondingAlphaValue;
      }
    }
    return decodedMorse;
  }
}

void main() {
  String encodingValue = "Ev ery Day Ka rma";
  String decodingValue = ". ...- / . .-. -.-- / -.. .- -.-- / -.- .- / .-. -- .-";
  MorseCode meroMorseCode = MorseCode(encodingValue, decodingValue);
  var en = meroMorseCode.enCode();
  var de = meroMorseCode.deCode();
  print("The String '$encodingValue' is encoded to corresponding morse code:");
  print("$en\n");
  print("The morse code '$decodingValue' is decoded to corresponding String:");
  print(de);
}
