import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_icons.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_sizes.dart';
import 'package:sohan_bd_calling_temp/app/extensions/context_extensions.dart';
import 'package:sohan_bd_calling_temp/app/themes/theme_manager.dart';
import 'package:sohan_bd_calling_temp/app/utils/helper_method.dart';

class InputLayout extends StatefulWidget{
  const InputLayout({
    super.key,
    required this.hintText,
    required this.controller,
    this.inputLabel,
    this.isPassword = false,
    this.marginTop = AppSizes.xxl,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.maxLines= 1,
    this.minLines= 1,
    this.borderColor,
    this.isLabelLarge= false,
    this.suffixIconCallBack= HelperMethod.emptyCallback,
    this.readOnly = false,
    this.contentPaddingHorizontal,
    this.contentPaddingVertical,
    this.keyboardType = TextInputType.text,
    this.isObscureText = false,
    this.obscureCharacter = '*',
    this.filColor,
    this.labelText,
    this.borderRadius,
    this.isBorder = false,
    this.borderWidth = AppSizes.dividerHeight,
    this.onTab = HelperMethod.emptyCallback,
  });

  final double marginTop;
  final String? inputLabel;
  final bool isLabelLarge;
  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool? isObscureText;
  final String obscureCharacter;
  final Color? filColor;
  final int? maxLines;
  final int? minLines;
  final Widget? prefixIcon;
  final VoidCallback suffixIconCallBack;
  final Widget? suffixIcon;
  final double? contentPaddingHorizontal;
  final double? contentPaddingVertical;
  final double? borderRadius;
  final VoidCallback onTab;
  final bool isPassword;
  final bool isBorder;
  final double borderWidth;
  final Color? borderColor;
  final bool readOnly;
  final FormFieldValidator? validator;

  @override
  State<InputLayout> createState() => _InputLayoutState();
}

class _InputLayoutState extends State<InputLayout> {
  bool obscureText = true;

  void toggle() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeManager themeManager = Get.find<ThemeManager>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: widget.marginTop,),
        if(widget.inputLabel != null)...<Widget>[
          Text(widget.inputLabel!.tr, style: widget.isLabelLarge ? context.txtTheme.labelLarge : context.txtTheme.labelSmall),
          const SizedBox(height: AppSizes.sm,),
        ],
        TextFormField(
          maxLines: widget.maxLines,
          minLines: widget.minLines,
          onTap: widget.onTab,
          readOnly: widget.readOnly,
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          obscuringCharacter: widget.obscureCharacter,
          validator: widget.validator,
          cursorColor: !themeManager.isDarkMode(context) ? AppLightColors.primaryColor : AppDarkColors.primaryColor,
          obscureText: widget.isPassword && obscureText,
          style: context.txtTheme.labelMedium,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: widget.contentPaddingHorizontal ?? AppSizes.md,
                vertical: widget.contentPaddingVertical ?? AppSizes.lg),
            filled: true,
            fillColor: widget.filColor ?? Colors.transparent,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: widget.prefixIcon != null ? AppSizes.sm : 0),
              child: widget.prefixIcon,
            ),
            suffixIcon: widget.isPassword ? GestureDetector(
              onTap: toggle,
              child: _suffixIcon(obscureText ? AppIcons.eyeCloseIcon : AppIcons.eyeOpenIcon),
            ) : widget.suffixIcon,
            prefixIconConstraints: const BoxConstraints(minHeight: AppSizes.xl, minWidth: AppSizes.xl),
            suffixIconConstraints: const BoxConstraints(minHeight: AppSizes.xl, minWidth: AppSizes.xl),
            errorStyle: context.txtTheme.labelMedium?.copyWith(
              color: !themeManager.isDarkMode(context) ? AppLightColors.errorColor : AppDarkColors.errorColor,
            ),
            suffixIconColor: !themeManager.isDarkMode(context) ? AppLightColors.primaryColor : AppDarkColors.primaryColor,
            prefixIconColor: !themeManager.isDarkMode(context) ? AppLightColors.primaryColor : AppDarkColors.primaryColor,
            labelText: widget.labelText,
            hintText: widget.hintText,
            hintStyle: context.txtTheme.labelMedium,
            border: _buildOutlineInputBorder(!themeManager.isDarkMode(context), 4),
            errorBorder: _buildOutlineInputBorder(!themeManager.isDarkMode(context), 1),
            focusedBorder: _buildOutlineInputBorder(!themeManager.isDarkMode(context), 3),
            enabledBorder: _buildOutlineInputBorder(!themeManager.isDarkMode(context), 4),
            disabledBorder: _buildOutlineInputBorder(!themeManager.isDarkMode(context), 2),
          ),
        )
      ],
    );
  }

  Padding _suffixIcon(String icon) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: SvgPicture.asset(
        colorFilter: const ColorFilter.mode(
          AppLightColors.blackColor,
          BlendMode.srcATop,
        ),
        icon,
      ),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder(bool isLightMode, int borderType) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(widget.borderRadius != null ? widget.borderRadius! : AppSizes.sm),
      borderSide: BorderSide(
          width: widget.isBorder ? widget.borderWidth : 0,
          color:
          widget.isBorder ?
          borderType == 1 ?
          isLightMode ? AppLightColors.errorColor : AppDarkColors.errorColor
              :
          borderType == 2 ?
          isLightMode ? AppLightColors.greyColor : AppDarkColors.greyColor
              :
          borderType == 3 ?
          isLightMode ? AppLightColors.primaryColor : AppDarkColors.primaryColor
              :
          widget.borderColor == null ? isLightMode ? AppLightColors.dividerColor : AppDarkColors.dividerColor : widget.borderColor!
              :
          Colors.transparent

        // color: widget.isBorder ? widget.borderColor == null ? isLightMode ? AppLightColors.dividerColor : AppDarkColors.dividerColor : Colors.transparent : Colors.transparent,
      ),
    );
  }
}