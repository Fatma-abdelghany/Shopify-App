import 'package:flutter/material.dart';

import '../utils/constants/strings_constants.dart';
import '../widgets/customButton.dart';
import '../widgets/customTextField.dart';
import '../widgets/grey_txt.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController? EmailController ;
  @override
  void initState() {
    // TODO: implement initState
    EmailController = TextEditingController();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            GreyTxt(label: StringsConstants.forgetPasswordHint,),
            SizedBox(height: 20,),
            Card(
              child: CustomTextField(
                Controller: EmailController,
                isPassword: false,
                hint:StringsConstants.userNameOrEmail,
                myPrefixIcon: Icon(Icons.email_outlined),
                type: TextInputType.emailAddress,

              ),
            ),
            SizedBox(height: 10,),
            CustomButton(text:StringsConstants.sendEmail, myBtnPressed: (){}),




          ],
        ),
      ),
    );
  }
}
