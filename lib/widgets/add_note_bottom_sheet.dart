import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        children: [
          CustomTextField(hint: 'Title',),
          SizedBox(height: 16),
          CustomTextField(hint: 'Content', maxLines: 5,)
        ],
      ),
    );
  }
}
