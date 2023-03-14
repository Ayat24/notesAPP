import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:noteapp/views/widget/edit_view_body.dart';

class EditNoteview extends StatelessWidget {
  const EditNoteview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditViewBody());
  }
}
