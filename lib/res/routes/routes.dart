import 'package:get/get.dart';
import 'package:scale_up_task/res/routes/routes_name.dart';
import 'package:scale_up_task/view/forgot_password/forgot_password.dart';
import 'package:scale_up_task/view/login_screen/login_screen.dart';
import 'package:scale_up_task/view/reset_your_password/reset_your_password.dart';
import 'package:scale_up_task/view/sign_up_screen/sign_up_screen.dart';
import 'package:scale_up_task/view/subscription_screen/subscription_screen.dart';
import 'package:scale_up_task/view/verification_screen/verification_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RouteName.loginScreen,
          page: () => LoginScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.signUpScreen,
          page: () => SignUpScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.forgetPassword,
          page: () => ForgotPassword(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.verificationScreen,
          page: () => VerificationScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
        GetPage(
          name: RouteName.resetYourPasswordScreen,
          page: () => ResetYourPasswordScreen(),
          transitionDuration: const Duration(milliseconds: 250),
          transition: Transition.leftToRightWithFade,
        ),
    GetPage(
      name: RouteName.subscriptionScreen,
      page: () => SubscriptionScreen(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade,
    ),
      ];
}
