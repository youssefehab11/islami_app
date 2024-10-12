class HelperFunctions {
  static String converDigit(int digit) {
    const List<String> arabics = [
      '٠',
      '١',
      '٢',
      '٣',
      '٤',
      '٥',
      '٦',
      '٧',
      '٨',
      '٩'
    ];
    switch (digit) {
      case 0:
        return arabics[0];
      case 1:
        return arabics[1];
      case 2:
        return arabics[2];
      case 3:
        return arabics[3];
      case 4:
        return arabics[4];
      case 5:
        return arabics[5];
      case 6:
        return arabics[6];
      case 7:
        return arabics[7];
      case 8:
        return arabics[8];
      default:
        return arabics[9];
    }
  }

  static String convertNumToArabic(int value) {
    String result = '';
    List<String> tempList = [];
    while (value > 0) {
      int digit = value % 10;

      String arabicDigit = converDigit(digit);
      tempList.add(arabicDigit);
      value ~/= 10;
    }
    for (int i = tempList.length - 1; i >= 0; i--) {
      result += tempList[i];
    }
    return result;
  }
}