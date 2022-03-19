import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  /// Creates a custom card.
  const CustomCard({
    this.child,
    this.padding,
    this.border,
    this.borderColor,
    this.borderRadius,
    this.shadowColor,
    this.shadowBlurRadius,
    this.shadowOffset,
    this.margin
  });

  /// The widget below this widget in the tree.
  ///
  /// If this property is null then an empty [Scaffold] is used.
  final Widget? child;

  /// The card's padding.
  ///
  /// If this property is null then a default value is used.
  final EdgeInsets? padding;

  /// The card's border.
  ///
  /// If this property is null then a default value is used.
  final Border? border;

  /// The card's border color.
  ///
  /// If this property is null then [Colors.white] is used.
  final Color? borderColor;

  /// The card's border radius.
  ///
  /// If this property is null then a default value is used.
  final BorderRadius? borderRadius;

  /// The card's shadow color.
  ///
  /// If this property is null then [Colors.grey] (shade 300) is used.
  final Color? shadowColor;

  /// The card's shadow blur radius.
  ///
  /// If this property is null then a default value of 3.0 is used.
  final double? shadowBlurRadius;

  /// The card's shadow offset.
  ///
  /// If this property is null then a default value is used.
  final Offset? shadowOffset;

  /// The card's margin.
  ///
  /// If this property is null then a default value is used.
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding
          ?? EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
      margin: margin
          ?? EdgeInsets.all(5.0),
      child: child
          ?? Scaffold(),
      decoration: BoxDecoration(
        border: border
            ?? Border.all(color: Colors.grey.shade300, width: 0.0),
        color: borderColor
            ?? Colors.white,
        borderRadius: borderRadius
            ?? BorderRadius.all(Radius.circular(10.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: shadowColor
                ?? Colors.grey.shade300,
            blurRadius: shadowBlurRadius
                ?? 3.0,
            offset: shadowOffset
                ?? Offset(0.0, 0.0),
          ),
        ],
      ),
    );
  }
}