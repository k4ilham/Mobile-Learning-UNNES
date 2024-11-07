import '../core.dart';

class MyText extends StatelessWidget {
  final String titleText;
  final TextStyle? titleStyle;
  final TextAlign textAlign;

  const MyText({
    Key? key,
    required this.titleText,
    this.titleStyle,
    this.textAlign = TextAlign.left, // Default alignment is set to left
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      textAlign: textAlign,
      style: titleStyle ??
          const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
    );
  }
}
