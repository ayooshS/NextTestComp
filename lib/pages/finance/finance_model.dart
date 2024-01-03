import '/flutter_flow/flutter_flow_util.dart';
import '/navigation/nav_bottom/nav_bottom/nav_bottom_widget.dart';
import 'finance_widget.dart' show FinanceWidget;
import 'package:flutter/material.dart';

class FinanceModel extends FlutterFlowModel<FinanceWidget> {
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
