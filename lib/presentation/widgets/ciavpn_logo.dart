import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show Alignment, Border, BorderRadius, BoxDecoration, BoxShadow, Colors, Container, FontWeight, Icon, Icons, LinearGradient, Offset, Shadow, Text, TextStyle;

class CiaVpnLogoMark extends StatelessWidget {
  const CiaVpnLogoMark({super.key, this.size = 76});

  final double size;
  static const Color _navy = Color(0xFF07111F);
  static const Color _teal = Color(0xFF1DC9B7);

  @override
  Widget build(BuildContext context) => Container(
    width: size,
    height: size,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(size * 0.27),
      gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: <Color>[Color(0xFF15364D), _navy],
      ),
      border: Border.all(color: _teal.withValues(alpha: 0.75), width: 1.4),
      boxShadow: <BoxShadow>[
        BoxShadow(color: _teal.withValues(alpha: 0.20), blurRadius: size * 0.25, spreadRadius: 1),
      ],
    ),
    child: Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Icon(Icons.shield_rounded, size: size * 0.76, color: _teal),
        Text('C', style: TextStyle(
          color: Colors.white,
          fontSize: size * 0.39,
          fontWeight: FontWeight.w800,
          height: 1,
          shadows: const <Shadow>[Shadow(color: Color(0xFF07111F), blurRadius: 5, offset: Offset(0, 1))],
        )),
      ],
    ),
  );
}
