import 'package:flutter_animate/flutter_animate.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginControler {
  static Future<bool> login({required String cpf, required String password}) async {
    await Future.delayed(3.seconds);
    if (cpf == '778.431.670-48' && password == '12345678') {
      var sp = await SharedPreferences.getInstance();

      await sp.setString('cpf', cpf);

      return true;
    }

    return false;
  }
}
