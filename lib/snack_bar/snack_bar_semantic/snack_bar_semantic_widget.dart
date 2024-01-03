import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'snack_bar_semantic_model.dart';
export 'snack_bar_semantic_model.dart';

class SnackBarSemanticWidget extends StatefulWidget {
  const SnackBarSemanticWidget({super.key});

  @override
  _SnackBarSemanticWidgetState createState() => _SnackBarSemanticWidgetState();
}

class _SnackBarSemanticWidgetState extends State<SnackBarSemanticWidget> {
  late SnackBarSemanticModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SnackBarSemanticModel());
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
