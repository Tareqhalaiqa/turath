import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_textfield.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/homescreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Login'),
          SizedBox(
            height: size.height * 0.02,
          ),
          CustomTextField(
            hint: "07...",
            label: 'Enter your PhoneNumber',
            icon: Icon(Icons.phone_android),
            keyboardType: TextInputType.phone,
          )
        ],
      ),
    );
  }
}
