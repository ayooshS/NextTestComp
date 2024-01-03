import '/flutter_flow/flutter_flow_util.dart';
import '/navigation/nav_bottom/nav_bottom/nav_bottom_widget.dart';
import 'source_widget.dart' show SourceWidget;
import 'package:flutter/material.dart';

class SourceModel extends FlutterFlowModel<SourceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavBottom component.
  late NavBottomModel navBottomModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navBottomModel = createModel(context, () => NavBottomModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navBottomModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
