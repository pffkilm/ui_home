import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _searchState();
}

class _searchState extends State<SearchField> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _showClose = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _showClose = _controller.text.isNotEmpty;
      });
    });
    _focusNode.addListener(() {
      setState(() {
        _showClose = _controller.text.isNotEmpty || _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 48,
      padding: EdgeInsets.only(right: 19, left: 14),
      decoration: BoxDecoration(
        color: ui.colors.input,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: ui.colors.inputStroke2, width: 1),
      ),
      child: Row(
        children: [
          ui.images.search(size: 20,  color: Color(0xFF7E7E9A)),
          SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: _controller,
              focusNode: _focusNode,
              cursorColor: ui.colors.accent,
              decoration: InputDecoration(
                hintText: "Искать описание",
                hintStyle: ui.typography.headlineRegular.copyWith(
                  color: ui.colors.inputText,
                ),
                border: InputBorder.none,
              ),
              style: ui.typography.textRegular,
            ),
          ),
          if (_showClose)
            GestureDetector(
              onTap: () {
                _controller.clear();
                _focusNode.requestFocus();
              },
              child: ui.images.close(size: 20, color: Color(0xFF7E7E9A)),
            ),
        ],
      ),
    );

  }
}