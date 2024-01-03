import '/flutter_flow/flutter_flow_util.dart';
import '/navigation/nav_bottom/nav_bottom/nav_bottom_widget.dart';
import '/navigation/nav_secondary/nav_secondary/nav_secondary_widget.dart';
import 'test_home_page_widget.dart' show TestHomePageWidget;
import 'package:flutter/material.dart';

class TestHomePageModel extends FlutterFlowModel<TestHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavBottom component.
  late NavBottomModel navBottomModel;
  // Model for NavSecondary component.
  late NavSecondaryModel navSecondaryModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navBottomModel = createModel(context, () => NavBottomModel());
    navSecondaryModel = createModel(context, () => NavSecondaryModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navBottomModel.dispose();
    navSecondaryModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
