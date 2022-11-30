import 'package:flutter/material.dart';

class DefaultTextFormField extends StatelessWidget {
  final String label;
  final FormFieldSetter onSaved;
  final FormFieldValidator<String> validator;

  const DefaultTextFormField({
    Key? key,
    required this.label,
    required this.onSaved,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
        TextFormField(
          key: key,
          onSaved: onSaved,
          validator: validator,
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}
