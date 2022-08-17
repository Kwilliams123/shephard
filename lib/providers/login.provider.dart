import 'package:flutter/cupertino.dart';
import 'package:shephard/providers/provider.dart';

class LoginProvider extends ProviderParent {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailController;
  TextEditingController passwordController;

  @override
  Future<void> init() {
    emailController = TextEditingController();
    passwordController = TextEditingController();

    return super.init();
  }

  void submit(BuildContext context) {
    if (formKey.currentState.validate()) {
      // all the fields are not empty you can now proceed to login
    }
  }

  @override
  Future<void> reset() {
    emailController.clear();
    passwordController.clear();
    return super.reset();
  }
}
