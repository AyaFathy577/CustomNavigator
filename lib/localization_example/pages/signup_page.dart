import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app/localization_example/models/user_model.dart';
import 'package:flutter_app/localization_example/pages/signin_page.dart';
import 'package:flutter_app/localization_example/widgets/app_name.dart';
import 'package:flutter_app/localization_example/widgets/backbutton.dart';
import 'package:flutter_app/localization_example/widgets/create_account_label.dart';
import 'package:flutter_app/localization_example/widgets/shape_container.dart';
import 'package:flutter_app/localization_example/widgets/submitted_button.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _firstFocusNode = FocusNode();
  final _secondFocusNode = FocusNode();
  var _user = new UserModel(name: '', email: '', password: '');
  final _scaffoldSignUpKey = GlobalKey<ScaffoldState>();
  final _form = GlobalKey<FormState>();
  // final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  void dispose() {
    _firstFocusNode.dispose();
    _secondFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldSignUpKey,
      body: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -MediaQuery.of(context).size.height * .15,
              right: -MediaQuery.of(context).size.width * .4,
              child: ShapeContainer(),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: height * .2),
                    AppName(),
                    const SizedBox(
                      height: 50,
                    ),
                    Form(
                      key: _form,
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration:
                              const InputDecoration(labelText: 'Name'),
                              textInputAction: TextInputAction.next,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please fill this field';
                                }
                                return null;
                              },
                              onFieldSubmitted: (_) {
                                FocusScope.of(context)
                                    .requestFocus(_firstFocusNode);
                              },
                              onSaved: (value) {
                                _user = UserModel(
                                  name: value,
                                  email: _user.email,
                                  password: _user.password,
                                );
                              },
                            ),
                            TextFormField(
                              decoration:
                              const InputDecoration(labelText: 'Email'),
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              focusNode: _firstFocusNode,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please fill this field';
                                }
                                return null;
                              },
                              onFieldSubmitted: (_) {
                                FocusScope.of(context)
                                    .requestFocus(_secondFocusNode);
                              },
                              onSaved: (value) {
                                _user = UserModel(
                                  name: _user.name,
                                  email: value,
                                  password: _user.password,
                                );
                              },
                            ),
                            TextFormField(
                              decoration:
                              const InputDecoration(labelText: 'Password'),
                              obscureText: true,
                              focusNode: _secondFocusNode,
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
                    const SizedBox(
                      height: 20,
                    ),
                    SubmitButton(text: 'Register Now',voidCallback: _saveSignUpForm,),
                    CreateAccountLabel(text1: 'Already have an account ?',text2: 'Login',voidCallback: () => Navigator.push(
                        context, MaterialPageRoute(builder: (context) => SignInPage())),),
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

  Future<void> _saveSignUpForm() async {
    // final isValid = _form.currentState.validate();
    // if (!isValid) {
    //   return;
    // }
    // _form.currentState.save();
    // Timer(
    //     Duration(seconds: 1),
    //         () => Navigator.of(context).pushReplacement(
    //     MaterialPageRoute(
    //     builder: (BuildContext context) => HomePage(),
    // )));

  }
}
