import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seeroo_erp/features/loginpage/login_page_controller.dart';
import 'package:seeroo_erp/features/loginpage/validation/validation_helper.dart';
import 'package:seeroo_erp/foundation/carousel_widget/carousel_slider_widget.dart';
import 'package:seeroo_erp/foundation/sp_solid_button/sp_solid_button.dart';
import 'package:seeroo_erp/foundation/textformfield/customtextformfield.dart';
import 'package:seeroo_erp/theme/strings/strings.dart';


class LoginPage extends StatelessWidget {
  
  final LoginController loginController = Get.put(LoginController());
  final GlobalKey<FormState> _formKey = GlobalKey();
  
   TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(


        child: Form(key: _formKey,
          child: Padding(padding: EdgeInsets.all(16.0),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CarouselSliderWidget(imageAssetPaths: CarouselImages.loginImages),
              const SizedBox(height: 10),
          
              CustomTextFormField(
              controller: loginController.emailController,
              validator: ValidationHelpers.validateEmail,
              labelText: 'Email',
              prefixIcon: Icons.email,
              
              ),
              const SizedBox(height: 15,),
              CustomTextFormField(
                controller: loginController.passwordController,
                validator: ValidationHelpers.validatePassword,
                labelText: 'Password',
                prefixIcon: Icons.lock,
                obscureText: true,
              ),
               SizedBox(height: 20,),
          
               SPSolidButton(btntext: "Login", onpressed: (){
                if (_formKey.currentState?.validate() ?? false) {
                      // Validation successful, proceed with login
                      loginController.login();
                    }
               })
              
            ],
          )
          ,),
        ),
        
      ),
    );
  }
}