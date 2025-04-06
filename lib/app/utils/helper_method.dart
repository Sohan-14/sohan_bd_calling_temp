import 'package:sohan_bd_calling_temp/app/config/app_strings.dart';
import 'package:sohan_bd_calling_temp/app/enums/general_type.dart';

class HelperMethod{
  HelperMethod._();
  static void emptyCallback() {}

  static String getGeneralTitleByType(GeneralType generalType) {
    return switch(generalType){
      GeneralType.TERMS_AND_CONDITION => AppStrings.termsAndCondition,
      GeneralType.PRIVACY_POLICY => AppStrings.privacyPolicy,
      GeneralType.ABOUT_US => AppStrings.aboutUs,
    };
  }
}