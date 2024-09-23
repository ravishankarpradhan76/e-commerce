import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../common_widgets/common_button.dart';
import '../common_widgets/common_text_field.dart';
class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}
class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
      ),
      body:Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Login',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.black87),),
            const SizedBox(height: 40),
            const CommonTextField(label: 'enter email',),
            const SizedBox(height: 8),
            const CommonTextField(label: 'enter Password',isPassword: true,),
            const SizedBox(height: 45),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: CommonButton(title: 'Log in'),
            ),
            const SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.only(left: 54),
              child: Row(
                children: [
                  Text('Don`t have an account ?',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600,color: Colors.black54),),
                  SizedBox(width: 8,),
                  Text('Sign Up',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w700,color: Colors.black87),),
                ],
              ),
            ),
      ],
    )
      )
    );
  }
}
