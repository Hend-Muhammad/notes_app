import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesbox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSuccess());
      await notesbox.add(note);
    } catch (e) {
      AddNoteFailure(e.toString());
    }
  }
} 