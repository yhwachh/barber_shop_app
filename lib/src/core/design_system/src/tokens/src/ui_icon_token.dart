part of app_ui;

class UIIconToken {
  //static const String adobeL = 'assets/icons/text.svg';

  static Widget toIcon(
    /// icon - is the path to the asset icon
    String icon, {
    Color? color,
    double? size,
    Alignment? alignment,
  }) {
    return SvgPicture.asset(
      icon,
      width: size,
      height: size,
      colorFilter:
          color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null,
      fit: BoxFit.contain,
      alignment: alignment ?? Alignment.center,
    );
  }
}
