import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewModel/check_viewModel.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  //changeNotifier özelliği için
  late final CheckViewModel _checkViewModel;
  @override
  void initState() {
    super.initState();
    _checkViewModel = CheckViewModel();
  }

  @override
  Widget build(BuildContext context) {
    //ViewModeldeki değişikliği dinleyeceksem:
    // ChangeNotifierProvider

    return ChangeNotifierProvider.value(
        value: _checkViewModel,
        builder: (context, child) {
          return Scaffold(
              body: Center(
            child: CheckboxListTile(
              //değişkeni dinliyor
              value: context.watch<CheckViewModel>().isCheckBoxOkay,
              //_loginViewModel.isCheckBoxOkay,
              title: Text('data2'),
              onChanged: (value) {
                //o değişkene -erişiyor
                context.read<CheckViewModel>().checkBoxChange(value ?? false);
                //_loginViewModel.checkBoxChange(value ?? false);
              },
            ),
          ));
        });
  }
}
