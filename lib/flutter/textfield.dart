import 'package:flutter/material.dart';

class ObscuredTextFieldSample extends StatefulWidget {
  const ObscuredTextFieldSample({super.key});

  @override
  State<ObscuredTextFieldSample> createState() =>
      _ObscuredTextFieldSampleState();
}

class _ObscuredTextFieldSampleState extends State<ObscuredTextFieldSample> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: 'Password',
          suffixIcon: IconButton(
            icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
        ),
      ),
    );
  }
}
