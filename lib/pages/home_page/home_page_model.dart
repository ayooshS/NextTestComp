import '/buttons/sm_btn/sm_btn_primary/sm_btn_primary_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SmBtnPrimary component.
  late SmBtnPrimaryModel smBtnPrimaryModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    smBtnPrimaryModel = createModel(context, () => SmBtnPrimaryModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    smBtnPrimaryModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
