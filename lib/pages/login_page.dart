import 'package:flutter/material.dart';
import 'package:shoppify_app/utils/constants/colors_constants.dart';
import 'package:shoppify_app/utils/constants/strings_constants.dart';
import 'package:shoppify_app/widgets/customButton.dart';
import 'package:shoppify_app/widgets/grey_txt.dart';
import 'package:shoppify_app/widgets/red_txt.dart';

import '../widgets/customTextField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController? EmailController ;
  TextEditingController? PasswordController;

  @override
  void initState() {
    // TODO: implement initState
    EmailController = TextEditingController();
    PasswordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: [
              Card(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    CustomTextField(
                        Controller: EmailController,
                        isPassword: false,
                        hint:StringsConstants.userNameOrEmail,
                        myPrefixIcon: Icon(Icons.person_outlined),
                        type: TextInputType.emailAddress,

                    ),
                    SizedBox(height: 10,),
                    Divider(
                        color: Color(0x9bd7d3d3)
                    ),
                    CustomTextField(
                      Controller:PasswordController ,
                      isPassword: true,
                      hint:StringsConstants.password,
                      myPrefixIcon: Icon(Icons.lock_outline_rounded),
                      type: TextInputType.emailAddress,

                    ),
                    SizedBox(height: 10,),


                  ],
                ),
              ),
              const SizedBox(height: 10),

              CustomButton(text:StringsConstants.login, myBtnPressed: (){}),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   GreyTxt(label: StringsConstants.donothaveAccount,),
                  TextButton(
                    child:  RedTxt(label: StringsConstants.createAccount),
                    onPressed: () {
                      //signup screen
                    },
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
