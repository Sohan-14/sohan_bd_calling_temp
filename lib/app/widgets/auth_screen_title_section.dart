import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohan_bd_calling_temp/app/config/app_sizes.dart';
import 'package:sohan_bd_calling_temp/app/extensions/context_extensions.dart';

class AuthScreenTitleSection extends StatelessWidget{
  const AuthScreenTitleSection({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(child: Text(title.tr, style: context.txtTheme.headlineLarge,)),
        const SizedBox(height: AppSizes.md),
        Center(child: Text(subTitle.tr, style: context.txtTheme.bodyLarge,)),
      ],
    );
  }
}