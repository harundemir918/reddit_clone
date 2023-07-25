/*
Author: Harun Demir
Date: 25.07.2023
*/

import 'package:flutter/material.dart';

class TryAgainButton extends StatelessWidget {
  final VoidCallback onPressed;

  const TryAgainButton({required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton.icon(
        key: const ValueKey("tryAgainButton"),
        onPressed: onPressed,
        icon: const Icon(Icons.refresh),
        label: const Text("Try again"),
      );
}
