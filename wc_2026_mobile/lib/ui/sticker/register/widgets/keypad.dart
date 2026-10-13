import 'package:flutter/material.dart';
import 'package:wc_2026_mobile/ui/core/theme/theme.dart';

class const Keypad({
  super.key,
  required final bool letters,
  required final ValueChanged<String> onKey,
  required final VoidCallback onBackSpace,
}) extends StatelessWidget {
  final _letterKeys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  final _digitKeys = '123456789';
  static const scanIcon = Icon(
    Icons.photo_camera_rounded,
    size: 18,
    color: AppColors.yellow,
  );

  @override
  Widget build(BuildContext context) {
    final size = letters ? const Size(44, 46) : Size(110, 48);
    final radius = letters
        ? AppDimens.borderRadiusSm
        : AppDimens.borderRadiusMd;

    final keys = letters ? _letterKeys : _digitKeys;
    final keyStyle = letters ? AppTextStyles.heading : AppTextStyles.code;

    return Wrap(
      spacing: letters ? 7 : 10,
      runSpacing: letters ? 8 : 6,
      alignment: .start,
      children: [
        for (final key in keys.split(''))
          _Key(
            child: Text(key, style: keyStyle),
            size: size,
            radius: radius,
            onPressed: () => onKey(key),
          ),

        _Key(
          size: size,
          radius: radius,
          background: AppColors.ink,
          onPressed: () {},
          child: letters
              ? scanIcon
              : Row(
                  mainAxisSize: .min,
                  spacing: 8,
                  children: [
                    scanIcon,
                    Text(
                      'SCAN',
                      style: AppTextStyles.caption.copyWith(
                        color: AppColors.yellow,
                      ),
                    ),
                  ],
                ),
        ),

        if (!letters)
          _Key(
            child: Text('0', style: keyStyle),
            size: size,
            radius: radius,
            onPressed: () => onKey('0'),
          ),

        _Key(
          child: Icon(
            Icons.backspace_outlined,
            size: 18,
            color: AppColors.ink,
            semanticLabel: 'Apagar',
          ),
          onPressed: onBackSpace,
          size: size,
          radius: radius,
        ),
      ],
    );
  }
}

class const _Key({
  required final Widget child,
  required final Size size,
  required final BorderRadius radius,
  final VoidCallback? onPressed,
  final Color background = AppColors.white,
  final bool outlined = true,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: size,
      child: Material(
        color: background,
        clipBehavior: .antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: radius,
          side: outlined
              ? BorderSide(color: AppColors.hairline)
              : BorderSide.none,
        ),
        child: InkWell(
          onTap: onPressed,
          child: Center(child: child),
        ),
      ),
    );
  }
}
