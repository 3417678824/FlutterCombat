import 'dart:ui';

class ColorsUtil {
  /// 十六进制颜色，
  static Color hexColor(String color) {
    String fs = "0xFF$color";
    return Color(int.parse(fs));
  }
}
