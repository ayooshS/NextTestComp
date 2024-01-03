import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'snack_bar_def_model.dart';
export 'snack_bar_def_model.dart';

class SnackBarDefWidget extends StatefulWidget {
  const SnackBarDefWidget({super.key});

  @override
  _SnackBarDefWidgetState createState() => _SnackBarDefWidgetState();
}

class _SnackBarDefWidgetState extends State<SnackBarDefWidget> {
  late SnackBarDefModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SnackBarDefModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
