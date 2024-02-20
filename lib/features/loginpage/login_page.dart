import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seeroo_erp/features/loginpage/login_page_controller.dart';
import 'package:seeroo_erp/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:seeroo_erp/foundation/textformfield/customtextformfield.dart';


class LoginPage extends StatelessWidget {
  
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
       
        body: Padding(padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFormField(
            controller: loginController.emailController,
            labelText: 'Email',
            
            ),
            const SizedBox(height: 15,),
            CustomTextFormField(
              controller: loginController.passwordController,
              labelText: 'Password',
              obscureText: true,
            ),
             SizedBox(height: 20,),

             SPSolidButton(btntext: "Login", onpressed: ()=> loginController.login())
            
          ],
        )
        ,),
        
      ),
    );
  }
}