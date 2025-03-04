import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HoverTextButton extends StatefulWidget {
  final String text;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;

  const HoverTextButton({
    Key? key,
    required this.text,
    this.textStyle,
    this.onPressed,
  }) : super(key: key);

  @override
  _HoverTextButtonState createState() => _HoverTextButtonState();
}

class _HoverTextButtonState extends State<HoverTextButton> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: TextButton(
        onPressed: widget.onPressed,
        child: Text(
          widget.text,
          style: widget.textStyle?.copyWith(
                decoration: _isHovering
                    ? TextDecoration.underline
                    : TextDecoration.none,
              ) ??
              TextStyle(decoration: _isHovering ? TextDecoration.underline : TextDecoration.none),
        ),
      ),
    );
  }
}