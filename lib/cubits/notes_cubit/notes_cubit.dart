import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

import '../../views/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModal>? notes;
  fetchAllNotes() async {
    var notesBox = Hive.box<NoteModal>(kNotesBox);

    notes = notesBox.values.toList();
  }
}
