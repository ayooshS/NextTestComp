import '/flutter_flow/flutter_flow_util.dart';
import '/navigation/nav_bottom/nav_bottom/nav_bottom_widget.dart';
import '/navigation/nav_secondary/nav_secondary/nav_secondary_widget.dart';
import '/navigation/top_nav/top_nav_default/top_nav_default_widget.dart';
import '/snack_bar/s_b_default/s_b_default_widget.dart';
import '/snack_bar/s_b_semantic/s_b_semantic_widget.dart';
import 'test_home_page_widget.dart' show TestHomePageWidget;
import 'package:flutter/material.dart';

class TestHomePageModel extends FlutterFlowModel<TestHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for TopNavDefault component.
  late TopNavDefaultModel topNavDefaultModel;
  // Model for NavSecondary component.
  late NavSecondaryModel navSecondaryModel;
  // Model for SBDefault component.
  late SBDefaultModel sBDefaultModel;
  // Model for SBSemantic component.
  late SBSemanticModel sBSemanticModel;
  // Model for NavBottom component.
  late NavBottomModel navBottomModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    topNavDefaultModel = createModel(context, () => TopNavDefaultModel());
    navSecondaryModel = createModel(context, () => NavSecondaryModel());
    sBDefaultModel = createModel(context, () => SBDefaultModel());
    sBSemanticModel = createModel(context, () => SBSemanticModel());
    navBottomModel = createModel(context, () => NavBottomModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topNavDefaultModel.dispose();
    navSecondaryModel.dispose();
    sBDefaultModel.dispose();
    sBSemanticModel.dispose();
    navBottomModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
