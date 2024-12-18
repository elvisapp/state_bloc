import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class TextCubit extends Cubit<TextState> {
  TextCubit() : super(TextState(displayText: "Olá, elvis.com!", textColor: Colors.black));

  void changeText() {
    if (state.displayText == "Olá, elvis.com!") {
      emit(TextState(displayText: "Texto Alterado!", textColor: Colors.blue));
    } else {
      emit(TextState(displayText: "Olá, elvis.com!", textColor: Colors.black));
    }
  }
}

class TextState extends Equatable {
  final String displayText;
  final Color textColor;

  TextState({required this.displayText, required this.textColor});

  @override
  List<Object> get props => [displayText, textColor];
}
