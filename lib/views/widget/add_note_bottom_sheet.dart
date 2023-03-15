import 'package:flutter/material.dart';
import 'custom_text_field.dart';
import 'Custom_button.dart';

class AddNoteBottomsheet extends StatelessWidget {
  const AddNoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: addNoteForm(),
      ),
    );
  }
}

class addNoteForm extends State<addNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 32,
        ),
        CustomTextField(
          hint: 'title',
        ),
        SizedBox(
          height: 16,
        ),
        CustomTextField(
          hint: 'content',
          maxLines: 5,
        ),
        SizedBox(
          height: 32,
        ),
        CustomButton(),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
