import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:harpy/components/common/misc/clearable_text_field.dart';
import 'package:harpy/core/theme/harpy_theme.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    this.text,
    this.onSubmitted,
    this.onClear,
    this.hintText,
    this.autofocus = false,
  });

  final String text;
  final ValueChanged<String> onSubmitted;
  final VoidCallback onClear;
  final String hintText;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final HarpyTheme harpyTheme = HarpyTheme.of(context);

    final Color fillColor = theme.brightness == Brightness.light
        ? Colors.black.withOpacity(.05)
        : Colors.white.withOpacity(.05);

    return Container(
      decoration: BoxDecoration(
        color: harpyTheme.backgroundColors.first,
        borderRadius: BorderRadius.circular(128),
      ),
      child: ClearableTextField(
        text: text,
        autofocus: autofocus,
        onSubmitted: onSubmitted,
        onClear: onClear,
        decoration: InputDecoration(
          prefixIcon: const Icon(FeatherIcons.search, size: 16),
          hintText: hintText,
          filled: true,
          fillColor: fillColor,
          isDense: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(128),
          ),
        ),
      ),
    );
  }
}
