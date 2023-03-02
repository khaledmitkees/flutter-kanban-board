import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double width;
  final double height;
  final String? label;
  final String? hintText;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final bool obscureText;
  final FormFieldValidator? validator;

  CustomTextField(
      {Key? key,
      required this.width,
      required this.height,
      this.label,
      this.hintText,
      this.keyboardType,
      this.onChanged,
      bool? obscureText,
      this.validator})
      : this.obscureText = obscureText ?? false,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: TextFormField(
          decoration: InputDecoration(
            labelText: label,
            hintText: hintText,
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white54),
                borderRadius: BorderRadius.circular(5.0)),
          ),
          style: TextStyle(
            color: Colors.black, // set the text color to red
          ),
          keyboardType: keyboardType,
          onChanged: onChanged,
          obscureText: obscureText,
          validator: validator,
        ));
  }
}
