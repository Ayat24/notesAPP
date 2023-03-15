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
    return GestureDetector(
      onTap: onTap,
    child:
    Column(
      children: [
        const SizedBox(
          height: 32,
        ),
        CustomTextField(
          onSaved: (value) {
            title = value;
          },
          hint: 'title',
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextField(
          onSaved: (value) {
            subTitle = value;
          },
          hint: 'content',
          maxLines: 5,
        ),
        const SizedBox(
          height: 16,
        ),
         CustomButton(
if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();}

 else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
        ),
        const SizedBox(
          height: 32,
        ),
      ],
    );
  }
}
