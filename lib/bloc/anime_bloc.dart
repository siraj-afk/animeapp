import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';


import '../repositery/api/animeapi/animeapinew.dart';
import '../repositery/model/animemodel.dart';

part 'anime_event.dart';
part 'anime_state.dart';

class AnimeBloc extends Bloc<AnimeEvent, AnimeState> {
  late AnimeModel animeModel;
  AnimeApi animeApi=AnimeApi();
  AnimeBloc() : super(AnimeInitial()) {
    on<FetchAnimeEvent>((event, emit) async{
      emit(AnimeblocLoading());
      try{

        animeModel = await animeApi.getAnime();
        emit(AnimeblocLoaded());
      } catch(e){
        print(e);
        emit(AnimeblocError());}
    });
  }
}