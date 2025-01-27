import 'package:get/get.dart';
import 'package:scale_up_task/res/routes/routes_name.dart';
import 'package:scale_up_task/view/login_screen/login_screen.dart';
import 'package:scale_up_task/view/sign_up_screen/sign_up_screen.dart';

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
      ];
}
