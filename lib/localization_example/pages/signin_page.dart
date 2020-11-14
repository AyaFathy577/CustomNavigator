import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app/localization_example/database/shared_pref.dart';
import 'package:flutter_app/localization_example/models/user_model.dart';
import 'package:flutter_app/localization_example/pages/signup_page.dart';
import 'package:flutter_app/localization_example/widgets/app_name.dart';
import 'package:flutter_app/localization_example/widgets/backbutton.dart';
import 'package:flutter_app/localization_example/widgets/create_account_label.dart';
import 'package:flutter_app/localization_example/widgets/shape_container.dart';
import 'package:flutter_app/localization_example/widgets/submitted_button.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var _user = new UserModel(email: '', password: '');
  final _focusNode = FocusNode();
  final _scaffoldLoginKey = GlobalKey<ScaffoldState>();
  final _form = GlobalKey<FormState>();
  bool _initialized = false;

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldLoginKey,
      body: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Positioned(
                top: -height * .15,
                right: -MediaQuery.of(context).size.width * .4,
                child: ShapeContainer()),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: height * .2),
                    AppName(),
                    const SizedBox(height: 50),
                    Form(
                      key: _form,
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration:
                                  const InputDecoration(labelText: 'Email'),
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please fill this field';
                                }
                                return null;
                              },
                              onFieldSubmitted: (_) {
                                FocusScope.of(context).requestFocus(_focusNode);
                              },
                              onSaved: (value) {
                                _user = UserModel(
                                  email: value,
                                  password: _user.password,
                                );
                              },
                            ),
                            TextFormField(
                              decoration:
                                  const InputDecoration(labelText: 'Password'),
                              obscureText: true,
                              focusNode: _focusNode,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please fill this field';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _user = UserModel(
                                  name: _user.name,
                                  email: _user.email,
                                  password: value,
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SubmitButton(
                      voidCallback: _saveLoginForm,
                      text: 'Login',
                    ),
                    CreateAccountLabel(
                      voidCallback: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpPage())),
                      text1: 'Don\'t have an account ?',
                      text2: 'Register',
                    ),
                  ],
                ),
              ),
            ),
            Positioned(top: 40, left: 0, child: BackButtonWidget()),
          ],
        ),
      ),
    );
  }

  Future<void> _saveLoginForm() async {
    // final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    // final isValid = _form.currentState.validate();
    // if (!isValid) {
    //   return;
    // }
    // _form.currentState.save();
    // UserCredential firebaseUser = await firebaseAuth.signInWithEmailAndPassword(
    //     email: _user.email, password: _user.password);
    // print('User Id ------- ' + firebaseUser.user.uid);
    // SharedPref sharedPref = SharedPref();
    // sharedPref.save('user', _user);
    // Timer(
    //     Duration(seconds: 1),
    //     () => Navigator.of(context).pushReplacement(
    //           MaterialPageRoute(
    //             builder: (BuildContext context) => HomePage(),
    //           ),
    //         ));
  }
}
