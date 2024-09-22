import 'package:ecommerce/common_widgets/common_button.dart';
import 'package:ecommerce/common_widgets/common_text_field.dart';
import 'package:ecommerce/utilities/app_sizes.dart';
import 'package:ecommerce/utilities/app_strings.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.pagePadding),
          child: Column(
            children: [
              _formsView(),
             _buttonView(),
            ],
          ),
        ),
      ),
    );
  }

  _formsView(){
    return Column(children: [
      const SizedBox(height: AppSizes.widgetPadding),
      const CommonTextField(label: 'enter name',),
      const SizedBox(height: AppSizes.widgetPadding),
      const CommonTextField(label: 'enter email',),
      const SizedBox(height: AppSizes.widgetPadding),
      const CommonTextField(label: 'enter Password',isPassword: true,),
      const SizedBox(height: AppSizes.widgetPadding),
    ],);
  }

  _buttonView(){
    return  CommonButton(title: AppStrings.signIn);
  }
}
