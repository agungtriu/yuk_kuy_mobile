import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/values/keys/get_storage_key.dart';
import '../../../../services/storage_services.dart';
import '../../../data/providers/auth_provider.dart';
import '../../../routes/app_pages.dart';

class LoginRegisterController extends GetxController {
  var authProvider = Get.put(LoginProvider());
  var getService = Get.put(StorageService());

  late TextEditingController emailLoginTF;
  late TextEditingController passwordLoginTF;

  late TextEditingController usernameRegisTF;
  late TextEditingController nameRegisTF;
  late TextEditingController emailRegisTF;
  late TextEditingController passwordRegisTF;
  late TextEditingController confirmPassRegisTF;

  // final count = 0.obs;
  @override
  void onInit() {
    initTextLogin();
    super.onInit();
  }

  void initTextLogin() {
    emailLoginTF = TextEditingController();
    passwordLoginTF = TextEditingController();
  }

  void initTextRegister() {
    usernameRegisTF = TextEditingController();
    nameRegisTF = TextEditingController();
    emailRegisTF = TextEditingController();
    passwordRegisTF = TextEditingController();
    confirmPassRegisTF = TextEditingController();
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  void login() {
    try {
      authProvider
          .login(emailLoginTF.text, passwordLoginTF.text.toString())
          .then((value) {
        getService.write(GetStorageKey.userToken, value.data.accessToken);
        getService.write(GetStorageKey.userName, value.data.username);
        Future.delayed(const Duration(seconds: 2), () {
          Get.back();
          Get.toNamed(AppPages.INITIAL_B);
          // print(readUserData()['id_user']);
          // print(readToken());
          // print("Timeout");
        });
      }).onError((error, stackTrace) {
        if (kDebugMode) {
          print(error);
        }
      });
    } catch (e) {
      if (kDebugMode) {
        print("gagal");
      }
    }
  }

  void register() {
    try {
      authProvider
          .register(usernameRegisTF.text, nameRegisTF.text, emailRegisTF.text,
              passwordRegisTF.text, confirmPassRegisTF.text)
          .then((value) {
        print(value);
      }).onError((error, stackTrace) {
        if (kDebugMode) {
          print(error);
        }
      });
    } catch (e) {
      if (kDebugMode) {
        print("gagal");
      }
    }
  }
}
