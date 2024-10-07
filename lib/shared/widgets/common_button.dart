/// this [CommonButton] class is a [MaterialButton]  that is common for all page

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spotless/shared/theme/theme.dart';
import 'package:websafe_svg/websafe_svg.dart';

class CommonButton extends StatefulWidget {
  final String name;
  TextStyle? textStyle = TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeight.w600,
    shadows: const [Shadow(color: MainTheme.whiteTypeColor, blurRadius: 0.3)],
    color: Colors.black,
  );
  final double height;
  final Function onTap;
  final Color colorBtn;
  final Color? colorBtnDisable;

  final Color colorText;
  final bool isEnable;
  final BorderRadius? radius;

  CommonButton(
      {Key? key,
      required this.colorText,
      required this.colorBtn,
      this.colorBtnDisable,
      required this.height,
      required this.name,
      this.isEnable = true,
      this.textStyle,
      this.radius,
      required this.onTap})
      : super(key: key);

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: widget.height,
      child: MaterialButton(
          onLongPress: null,

          // highlightElevation: Colors.white,
          highlightElevation: 2.5,
          // enableFeedback: false,
          padding: EdgeInsets.zero,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          disabledColor: widget.colorBtnDisable,
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          elevation: 0,
          shape: OutlineInputBorder(
              borderRadius:
                  widget.radius ?? const BorderRadius.all(Radius.circular(14)),
              borderSide: const BorderSide(color: Colors.transparent)),
          color: widget.colorBtn,
          child: Text(widget.name, style: widget.textStyle),
          onPressed: widget.isEnable
              ? () {
                  widget.onTap();
                }
              : null),
    );
  }
}

class FloatingButton extends StatelessWidget {
  final Function onpress;

  const FloatingButton({
    super.key,
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () => onpress(),
      child: CircleAvatar(
        radius: 24.sp,
        backgroundColor: MainTheme.blueTypeOneColor,
        child: WebsafeSvg.asset('assets/images/add_floating.svg'),
      ),
    );
  }
}
