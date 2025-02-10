import 'package:flutter/material.dart';

import '../theme/color_pallette.dart';

class SharedLoading extends StatelessWidget {
  const SharedLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.05),
          borderRadius: BorderRadius.circular(16),
        ),
        child: CircularProgressIndicator(
          strokeWidth: 1,
          backgroundColor: ColorPalette.primaryColor.withValues(alpha: 0.2),
          color: ColorPalette.primaryColor..withValues(alpha: 0.4),
        ),
      ),
    );
  }
}
