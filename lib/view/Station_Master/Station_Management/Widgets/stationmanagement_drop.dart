import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StationManagementDrop extends StatefulWidget {
  String val;
  List<String> items;
  void Function(String?)? onChanged;
  StationManagementDrop(
      {super.key,
      required this.val,
      required this.items,
      required this.onChanged});

  @override
  State<StationManagementDrop> createState() => _StationManagementDropState();
}

class _StationManagementDropState extends State<StationManagementDrop> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: widget.val,
      items: widget.items.map(
        (String result) {
          return DropdownMenuItem<String>(value: result, child: Text(result));
        },
      ).toList(),
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.lightBlue),
        ),
      ),
    );
  }
}
