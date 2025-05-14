import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const EditNoteView();
        }),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(note.title),
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 26),
              subtitle: Padding(
                padding: const EdgeInsets.only(top:16.0, bottom: 12),
                child: Text(note.content),
              ),
              subtitleTextStyle: TextStyle(color: Colors.black.withValues(alpha: 0.3), fontSize: 18),
              trailing: IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.trash, size: 24, color: Colors.black),),
            ),
             Padding(
               padding: const EdgeInsets.only(right: 24),
               child: Text(note.date, style: TextStyle(color: Colors.black.withValues(alpha: 0.3)),),
             )
          ],
        ),
      ),
    );
  }
}