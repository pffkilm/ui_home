import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';


class  Input extends StatefulWidget {
  final String? label;
  final String? hint;
  final String? helperText;
  final String? value;
  final bool isPassword;
  final bool showValidationBorder;
  final bool showEyeIcon;
  final bool hasError;
  final Function(String)? onChanged;

  const Input({
    super.key,
    this.label,
    this.hint,
    this.helperText,
    this.value = '',
    this.isPassword = false,
    this.showValidationBorder = false,
    this.showEyeIcon = true,
    this.hasError = false,
    this.onChanged,
  });


  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  late TextEditingController _controller;
  bool _isFocus = false;
  bool _showPassword = false;

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
        if(widget.label != null)...[
          Text(
            widget.label!,
            style: ui.typography.captionRegular.copyWith(
              color: ui.colors.description
            ),
          ),
          SizedBox(height: 8)
        ],
        SizedBox(
          width: 335,
          height: 48,
          child: Focus(
              child: FocusScope(
                onFocusChange: (hasFocus){
                  setState(() => _isFocus = hasFocus);
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
                        color: ui.colors.inputText
                      ),

                      filled: true,
                      fillColor: widget.hasError
                        ? Color(0x1AFD3535) : ui.colors.input,

                      suffixIcon: widget.isPassword && widget.showEyeIcon
                        ? IconButton(
                          onPressed: (){
                            setState(() => _showPassword = !_showPassword );
                          },
                          icon: _showPassword
                        ? ui.images.eye(size: 20)
                        : ui.images.eyeClose(size: 20),
                       )
                      : null,
                      enabledBorder: _buildBorder(_getBorderColor()),
                      focusedBorder: _buildBorder(
                        widget.hasError
                            ? Color(0xAFD35351A)
                            : ui.colors.accent.withOpacity(0.5)
                      )
                    ),
                    onChanged: (text){
                      widget.onChanged?.call(text);
                    },
                  )
              )
          ),
        ),
         if(widget.helperText != null)...[
           SizedBox(height: 8),
           Text(
             widget.helperText!,
             style: ui.typography.captionRegular.copyWith(
               color: ui.colors.error
             ),
           )
         ],
      ],
    );
  }

  OutlineInputBorder _buildBorder(Color color){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color,width: 1 )
    );
  }

  Color _getBorderColor(){
    if(_isFocus){
      return ui.colors.accent.withOpacity(0.5);
    }
    if(widget.hasError){
      return ui.colors.error;
    }
    if(widget.showValidationBorder && _controller.text.isNotEmpty){
      return ui.colors.inputBackground;
    }
    return ui.colors.inputStroke2;
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
}