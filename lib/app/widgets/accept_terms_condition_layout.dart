import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/app/config/app_dark_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_light_colors.dart';
import 'package:sohan_bd_calling_temp/app/config/app_strings.dart';
import 'package:sohan_bd_calling_temp/app/enums/general_type.dart';
import 'package:sohan_bd_calling_temp/app/extensions/context_extensions.dart';
import 'package:sohan_bd_calling_temp/app/routes/app_screens.dart';
import 'package:sohan_bd_calling_temp/app/themes/theme_manager.dart';
import 'package:sohan_bd_calling_temp/features/auth/controllers/auth_controller.dart';

class AcceptTermsConditionLayout extends StatelessWidget {
  const AcceptTermsConditionLayout({
    super.key,
    this.marginTop = 32.0
  });
  final double marginTop;

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.find<AuthController>();
    final ThemeManager themeManager = Get.find<ThemeManager>();

    return Column(
      children: <Widget>[
        SizedBox(height: marginTop,),
        Row(
          children: <Widget>[
            Checkbox(
              value: false,
              checkColor: !themeManager.isDarkMode(context)
                  ? AppLightColors.whiteColor
                  : AppDarkColors.whiteColor,
              activeColor: !themeManager.isDarkMode(context)
                  ? AppLightColors.primaryColor
                  : AppDarkColors.primaryColor,
              side: BorderSide(width: 1, color: !themeManager.isDarkMode(context)
                  ? AppLightColors.primaryColor
                  : AppDarkColors.primaryColor),
              onChanged: (bool? isChecked) {
                if(isChecked != null){
                }
                else {
                }
              },
            ),

            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: AppStrings.termsAndConditionsAgreement.tr, style: context.txtTheme.bodyMedium,),
                      TextSpan(
                        text: " ${AppStrings.termsAndCondition.tr}",
                        style: context.txtTheme.bodyMedium?.copyWith(
                          color: !themeManager.isDarkMode(context)
                              ? AppLightColors.primaryColor
                              : AppDarkColors.primaryColor
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.toNamed(AppScreens.generalRoute, arguments: GeneralType.TERMS_AND_CONDITION);
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}