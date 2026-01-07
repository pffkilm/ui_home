import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class  Input extends StatefulWidget {
  final String? label;
  final String? hint;
  final String? value;
  final String? helperText;
  final bool isPassword;
  final bool showEyeIcon;
  final bool hasError;
  final bool showValidationBorder;
  final Function(String)? onChanged;

  const Input({
    super.key,
    this.label,
    this.hint,
    this.value = '',
    this.helperText,
    this.isPassword = false,
    this.showEyeIcon = true,
    this.hasError = false,
    this.showValidationBorder = false,
    this.onChanged,

  });

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  late TextEditingController _controller;
  bool _showPassword = false;
  bool _isFocused = false;

  @override
  void initState(){
    super.initState();
    _controller = TextEditingController(text: widget.value);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)...[
          Text(
            widget.label!,
            style: ui.typography.captionRegular.copyWith(
              color: ui.colors.description,
            ),
          ),
          SizedBox(height: 8),
        ],

        SizedBox(
          width: 335,
          height: 48,
          child: FocusScope(
            child: Focus(
              onFocusChange: (hasFocus){
                setState(() => _isFocused = hasFocus);
              },
              child: TextFormField(
                controller: _controller,
                obscureText: widget.isPassword && !_showPassword,
                obscuringCharacter: '*',
                cursorColor:
                  widget.hasError ? ui.colors.error : ui.colors.accent,
                decoration: InputDecoration(
                  hintText: widget.hint,
                  hintStyle: ui.typography.textRegular.copyWith(
                    color: ui.colors.description
                  ),
                  filled: true,
                  fillColor: widget.hasError
                    ? Color(0x1AFD3535)
                      : ui.colors.input,

                  suffixIcon: widget.isPassword && widget.showEyeIcon
                    ? IconButton(
                      onPressed:(){
                        setState(() => _showPassword = !_showPassword);
                      },
                      icon: _showPassword
                      ? ui.images.eye(size: 20)
                      : ui.images.eyeClose(size: 20))
                      : null,

                  focusedBorder: _buildBorder(
                  widget.hasError ? ui.colors.error : ui.colors.accent.withOpacity(0.5),
                  2),
                  enabledBorder:  _buildBorder(_getBorderColor(), 1),
                ),
                onChanged: (text){
                  widget.onChanged?.call(text);
                },

              ),
            ),
          ),
        ),

        if(widget.helperText != null) ...[
          SizedBox(height: 8),
          Text(
            widget.helperText!,
            style: ui.typography.captionRegular.copyWith(
                color: ui.colors.error
            ),
          )
        ]
      ],
    );
  }
  OutlineInputBorder _buildBorder(Color color, double widht){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color, width: widht)
    );
  }

  Color _getBorderColor(){
    if(_isFocused){
      return widget.hasError ? ui.colors.error : ui.colors.accent;
    }
    if(widget.hasError){
      return  ui.colors.error;
    }
    if(widget.showValidationBorder && _controller.text.isNotEmpty){
      return  ui.colors.inputBackground;
    }
    return ui.colors.inputStroke2;
  }
}
