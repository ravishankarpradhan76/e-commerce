import 'package:flutter/material.dart';

class CommonTextField extends StatefulWidget {
  final String label;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final bool isPassword; // New parameter to check if it's a password field

  const CommonTextField({
    required this.label,
    this.validator,
    this.onSaved,
    this.isPassword = false, // Default is false
  });

  @override
  _CommonTextFieldState createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  bool _isObscured = true; // State to manage password visibility

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword ? _isObscured : false, // Use obscure text for passwords
      decoration: InputDecoration(
        labelText: widget.label,
        border: UnderlineInputBorder(),
        suffixIcon: widget.isPassword // Show icon only if it's a password field
            ? IconButton(
          icon: Icon(
            _isObscured ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _isObscured = !_isObscured; // Toggle visibility
            });
          },
        )
            : null,
      ),
      validator: widget.validator,
      onSaved: widget.onSaved,
    );
  }
}
