import 'package:flutter/widgets.dart';
import 'package:material_ui/material_ui.dart';
import 'package:wc_2026_mobile/ui/core/theme/app_colors.dart';
import 'package:wc_2026_mobile/ui/core/theme/theme.dart';

class const StickerActionButton({
  super.key,
  required final String label,
  required final IconData icon,
  required final VoidCallback? onPressed,
  final ButtonStyle? style,
  final double discSize = 24,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final enabled = onPressed != null;

    return FilledButton(
      onPressed: onPressed,
      child: Row(
        children: [
          SizedBox(width: discSize),
          Expanded(
            child: Center(child: Text(label, style: AppTextStyles.bodyBold)),
          ),
          CircleAvatar(
            backgroundColor: enabled ? AppColors.ink : AppColors.borderStrong,
            radius: discSize / 2,
            child: Icon(
              icon,
              size: 14,
              color: enabled ? AppColors.ink : AppColors.borderStrong,
            ),
          ),
        ],
      ),
    );
  }
}
