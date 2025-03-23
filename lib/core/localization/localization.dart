import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/core/localization/bn_bn.dart';
import 'package:sohan_bd_calling_temp/core/localization/en_us.dart';

class TranslationService extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': EnUs.translations,
    'bn_Bn': BnBn.translations,
  };
}
