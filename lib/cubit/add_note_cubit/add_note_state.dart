class AddNoteState {}

class AddNoteInit extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFaileur extends AddNoteState {
  final String errMessage;
  AddNoteFaileur(this.errMessage);
}
