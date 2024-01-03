import '/button/sm_btn/default/sm_btn_link_def/sm_btn_link_def_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 's_b_default_widget.dart' show SBDefaultWidget;
import 'package:flutter/material.dart';

class SBDefaultModel extends FlutterFlowModel<SBDefaultWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for SmBtnLinkDef component.
  late SmBtnLinkDefModel smBtnLinkDefModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    smBtnLinkDefModel = createModel(context, () => SmBtnLinkDefModel());
  }

  @override
  void dispose() {
    smBtnLinkDefModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
