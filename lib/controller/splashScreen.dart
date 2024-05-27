import 'dart:async';

import 'package:get/get.dart';
import 'package:individual_project/authentication/login/login_screen.dart';
import 'package:individual_project/controller/auth_controller.dart';
import 'package:individual_project/screen/widget/Menu_List/navigator_Bar.dart';

class SplashController extends GetxController {
  Timer? _timer;

  void intiSplashScreen() {
    // Ensure AuthController is already initialized
    AuthController authController = Get.find<AuthController>();

    _timer = Timer(
      Duration(seconds: 3),
      () => authController.isLogin()
          ? Get.offAll(() => NavigatorBar())
          : Get.offAll(() => LoginScreen()),
    );
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}
