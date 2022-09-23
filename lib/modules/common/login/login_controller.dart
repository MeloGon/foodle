import 'package:flutter/material.dart';
import 'package:foodle_app/util/my_colors.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController? _txUser;
  TextEditingController? get txUser => _txUser;
  TextEditingController? _txPass;
  TextEditingController? get txPass => _txPass;

  bool existLocal = false;

  @override
  void onInit() {
    setArguments();
    super.onInit();
  }

  setArguments() {
    _txUser = TextEditingController();
    _txPass = TextEditingController();
  }

  void goToAdminMenu() async {
    //Get.toNamed(AppRoutes.ADMINMENU);
  }

  void goToClientMenu() async {
    //Get.toNamed(AppRoutes.CLIENTMENU);
  }

  void goToUserMenu() async {
    //Get.toNamed(AppRoutes.USERMENU);
  }

  searchLocalUser() async {
    if (txUser!.text.isEmpty || txPass!.text.isEmpty) {
      Get.snackbar('Advertencia',
          'Tiene que ingresar una cuenta y una contraseña validos para poder continuar',
          backgroundColor: MyColors.white, colorText: MyColors.blackBg);
    } else if (txUser!.text == 'admin' || txPass!.text == 'asdqwe123') {
      //Get.toNamed(AppRoutes.ADMINMENU);
    } else {
      //    loginWithGoogleMail();
    }
  }

  /* loginWithGoogleMail() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    final authResult =
        await FirebaseAuth.instance.signInWithCredential(credential);

    final User? user = authResult.user;
    final User? currentUser = FirebaseAuth.instance.currentUser;
    if (user!.uid == currentUser!.uid) {
      print('este es el correo y pass ${user.displayName}');
      await firebaseFirestore
          .collection("GuiaLocales")
          .doc("admin")
          .collection("Usuarios")
          .get()
          .then((usuariosDocs) {
        for (var usuario in usuariosDocs.docs) {
          if (user.email == usuario["email"]) {
            Get.offAllNamed(AppRoutes.USERMENU, arguments: [
              usuario['idUser'],
              user.displayName,
              user.photoURL,
              usuario['tipoUsuario']
            ]);
          }
        }
      });

      return;
    } else {
      Get.snackbar('Ups algo salió mal',
          'Por favor pongase en contacto con el equipo de desarrollo. Gracias');
    }
  } */
}
