import 'package:flutter/material.dart';
import 'package:student_management/optimized_views/components/custom_button.dart';
import 'package:student_management/optimized_views/components/custom_text_form_field.dart';
import 'package:student_management/pages/login_page.dart';
import 'package:student_management/utils/strings.dart';
import 'package:student_management/utils/text.dart';
import 'package:student_management/utils/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final studentIdController = TextEditingController();

  @override
  void dispose() {
    studentIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                'images/student image.png',
                fit: BoxFit.fitWidth,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .4,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .64,
                  color: CustomColors.lightYellow.withOpacity(0.9),
                  padding: const EdgeInsets.all(CustomSpace.mediumSpace),
                  child: Column(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomText(
                              text: Strings.studentLogin,
                              color: CustomColors.darkBlue,
                              fontSize: CustomFontSize.largeFont,
                              fontWeight: FontWeight.bold,
                            ),
                            const SizedBox(
                              height: CustomSpace.xLargeSpace,
                            ),
                            const CustomText(
                                text: Strings.loginScreenSubtitle1,
                                color: CustomColors.darkBlue),
                            const SizedBox(
                              height: CustomSpace.largeSpace,
                            ),
                            SizedBox(
                              height: 50,
                              child: CustomTextFormField(
                                controller: studentIdController,
                                prefixIcon: const Icon(
                                  FontAwesomeIcons.idBadge,
                                  color: CustomColors.darkBlue,
                                ),
                                hint: Strings.studentId,
                                hintStyle: const TextStyle(
                                    color: CustomColors.hintColor),
                                borderColor: CustomColors.white,
                                enabledBorderColor: CustomColors.white,
                                disabledBorderColor: CustomColors.white,
                                focusedBorderColor: CustomColors.white,
                              ),
                            ),
                            const SizedBox(
                              height: CustomSpace.smallSpace,
                            ),
                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: CustomButton(
                                onPressed: () {
                                  onButtonPressed();
                                },
                                text: Strings.continueString.toUpperCase(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const CustomText(
                        text:
                            'Not registered yet? Please contact to your Educational Institudte for your ID',
                        color: CustomColors.darkBlue,
                        fontWeight: FontWeight.w500,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void onButtonPressed() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const LogInPage()));
  }
}
