import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

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
          color: const Color.fromARGB(255, 255, 216, 98),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text('Flutter tips'),
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 26),
              subtitle: Padding(
                padding: const EdgeInsets.only(top:16.0, bottom: 12),
                child: Text('Build your Career with Tharwat Samy'),
              ),
              subtitleTextStyle: TextStyle(color: Colors.black.withValues(alpha: 0.3), fontSize: 18),
              trailing: IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.trash, size: 24, color: Colors.black),),
            ),
             Padding(
               padding: const EdgeInsets.only(right: 24),
               child: Text('May 21.2022', style: TextStyle(color: Colors.black.withValues(alpha: 0.3)),),
             )
          ],
        ),
      ),
    );
  }
}