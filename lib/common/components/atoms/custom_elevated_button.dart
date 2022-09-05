import 'package:flutter/material.dart';

class CustomElevatedButton extends ElevatedButton {
  const CustomElevatedButton({
    super.key,
    required super.onPressed,
    required child,
    super.style,
    bool isLoading = false,
    Widget? loading,
    bool disabledWhileLoading = true,
  }) : super(
          child: isLoading
              ? loading ??
                  const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    ),
                  )
              : child,
        );
}
