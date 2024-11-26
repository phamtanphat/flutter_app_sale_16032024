import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import '../base/base_bloc.dart';

class LoadingWidget extends StatelessWidget {
  final Widget child;
  final BaseBloc bloc;

  LoadingWidget({
    required this.child,
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    return StreamProvider<bool>.value(
      value: bloc.loadingStream,
      initialData: false,
      child: Stack(
        children: <Widget>[
          child,
          Consumer<bool>(
            builder: (context, isLoading, child) => Center(
              child: isLoading
                  ? IgnorePointer(
                ignoring: false,
                child: Container(
                  constraints: BoxConstraints.expand(),
                  decoration: const BoxDecoration(
                    color: Colors.black45,
                  ),
                  child: const SpinKitPouringHourGlass(
                    color: Colors.white,
                  ),
                ),
              )
                  : Container(),
            ),
          ),
        ],
      ),
    );
  }
}