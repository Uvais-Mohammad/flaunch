import 'package:flutter_bloc/flutter_bloc.dart';

import 'log.dart';


class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    logDev(
      '${bloc.runtimeType} created',
      'BLoC.onCreate',  
      info: true,
    );
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    logDev(
      '${bloc.runtimeType} changed\n$change',
      'BLoC.onChange', 
      success: true,
    );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    logDev(
      '${bloc.runtimeType} error\n$error\n$stackTrace',
      'BLoC.onError', 
      error: true,
    );
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    logDev(
      '${bloc.runtimeType} closed',
      'BLoC.onClose', 
      info: true,
    );
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    logDev(
      '${bloc.runtimeType} event\n$event',
      'BLoC.onEvent',  
      alien: true,
    );
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    logDev(
      '${bloc.runtimeType} transition\n$transition',
      'BLoC.onTransition',  
      special: true,
    );
  }
}