import 'package:flutter/material.dart';
import 'package:foodle_app/util/my_colors.dart';
import 'package:foodle_app/util/my_styles.dart';

class ItemPrimaryButton extends StatelessWidget {
  final String text;
  final bool hasIcon;
  final String? icon;
  final Color? bgColor;
  final Color? borderColor;
  final Color? textColor;
  final VoidCallback? onTap;
  final bool isValid;
  final double? width;
  final double height;

  const ItemPrimaryButton(
      {Key? key,
      this.text = '',
      this.hasIcon = false,
      this.icon,
      this.onTap,
      this.bgColor,
      this.borderColor = MyColors.blackBg,
      this.textColor,
      this.isValid = true,
      this.width,
      this.height = 60.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: borderColor!)),
      width: width ?? MediaQuery.of(context).size.width,
      height: height,
      child: ButtonTheme(
        height: height,
        child: TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            )),
            backgroundColor: MaterialStateProperty.all<Color>(
                isValid ? bgColor ?? Colors.transparent : MyColors.disable),
          ),
          onPressed: onTap,
          //disabledColor: MainColors.disable,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              //if (icon != null) SvgPicture.asset(icon!, color: isValid ? textColor ?? MainColors.textButton : MainColors.textSecondary,),
              //if (icon != null) SizedBox(width: 10.0,),
              Text(
                text,
                style: MyStyles.poppins_15_semibold.merge(TextStyle(
                    color: isValid
                        ? textColor ?? MyColors.white
                        : MyColors.white)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: borderColor!, width: 1, style: BorderStyle.solid),
        ),
      ),
    );
  }
}
