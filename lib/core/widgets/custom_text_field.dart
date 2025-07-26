import 'package:flutter/material.dart';
import 'package:recipe/core/helper/app_validator.dart';
import 'package:recipe/core/utils/color_helper.dart';
import 'package:recipe/core/utils/styles.dart';

@immutable
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.textLabel,
    required this.textController,
    this.textFieldSuffix,
    this.appValidator,
    this.readOnly = false,
    this.onChangedFunction,
    this.textFieldPrefix = const SizedBox(width: 1),
    this.isObsecure = false,
    this.keyboardType = TextInputType.text,
    this.maxLength,
  });
  final TextEditingController textController;
  final Widget? textFieldSuffix;
  final Widget? textFieldPrefix;
  final String textLabel;
  final bool readOnly;
  final TextInputType keyboardType;
  final AppValidator? appValidator;
  final Function(String)? onChangedFunction;
  final bool isObsecure;
  final int? maxLength;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      controller: textController,
      obscureText: isObsecure,
      keyboardType: keyboardType,
      readOnly: readOnly,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(18),
        prefixIcon: textFieldPrefix,
        hintText: textLabel,
        hintStyle: Styles.textStyle16,
        filled: true,
        suffixIcon: textFieldSuffix,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.white, width: 1),
        ),
        fillColor: Colors.grey.withAlpha(50),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.white, width: 1),
        ),
      ),
      validator: appValidator?.validate,
      onChanged: onChangedFunction,
    );
  }
}
