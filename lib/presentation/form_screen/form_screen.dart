import 'package:flutter/material.dart';
import 'package:flutter_signup_form/presentation/layout/default_scaffold.dart';
import 'package:flutter_signup_form/presentation/layout/default_submit_button.dart';
import 'package:flutter_signup_form/presentation/layout/default_text_form_field.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final formKey = GlobalKey<FormState>();

  String name = '';
  String email = '';
  String password = '';
  String address = '';
  String nickname = '';


  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: 'Form Screen',
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Form(
                key: formKey,
                child: Column(
                  children: [
                    DefaultTextFormField(
                      label: '이름',
                      onSaved: (val) {
                        name = val;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return '필수 필드 입니다.';
                        }
                        return null;
                      },
                    ),
                    DefaultTextFormField(
                      label: '이메일',
                      onSaved: (val) {
                        email = val;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return '필수 필드 입니다.';
                        }
                        return null;
                      },
                    ),
                    DefaultTextFormField(
                      label: '비밀번호',
                      onSaved: (val) {
                        password = val;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return '필수 필드 입니다.';
                        }
                        return null;
                      },
                    ),
                    DefaultTextFormField(
                      label: '주소',
                      onSaved: (val) {
                        address = val;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return '필수 필드 입니다.';
                        }
                        return null;
                      },
                    ),
                    DefaultTextFormField(
                      label: '닉네임',
                      onSaved: (val) {
                        nickname = val;
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return '필수 필드 입니다.';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: DefaultSubmitButton(
                  onPressed: () {
                    // validation 이 다 통과하면 true 리턴
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('저장 성공'),
                          duration: Duration(milliseconds: 300),
                        ),
                      );
                    }
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return  AlertDialog(
                          content:
                          Column(
                            children: [
                              Text(name),
                              Text(email),
                              Text(password),
                              Text(address),
                              Text(nickname),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
