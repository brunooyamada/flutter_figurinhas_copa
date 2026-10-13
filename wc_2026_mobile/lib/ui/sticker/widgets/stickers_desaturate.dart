import 'package:flutter/widgets.dart';

class const StickersDesaturate({
  super.key,
  required final bool active,
  required final Widget child,
}) extends StatelessWidget {
  final _grayScale = const ColorFilter.matrix([
    // vermelho
    0.2126, 0.7152, 0.0722, 0, 0,
    // verde
    0.2126, 0.7152, 0.0722, 0, 0,
    // azul
    0.2126, 0.7152, 0.0722, 0, 0,
    // transparencia
    0, 0, 0, 1, 0,
  ]);

  final _identity = const ColorFilter.matrix([
    // vermelho
    1, 0, 0, 0, 0,
    // verde
    0, 1, 0, 0, 0,
    // azul
    0, 0, 1, 0, 0,
    // transparencia
    0, 0, 0, 1, 0,
  ]);

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: active ? _grayScale : _identity,
      child: child,
    );
  }
}
