import 'package:flutter/material.dart';

class DefaultSubmitButton extends StatelessWidget {
  final Function()? onPressed;

  const DefaultSubmitButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          const TextStyle(backgroundColor: Colors.blue),
        ),
      ),
      onPressed: onPressed,
      child: const Text(
        'Submit',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
