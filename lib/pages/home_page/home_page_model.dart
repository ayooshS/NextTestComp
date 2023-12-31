import '/buttons/sm_btn/sm_btn_bezeled/sm_btn_bezeled_widget.dart';
import '/buttons/sm_btn/sm_btn_default/sm_btn_default_widget.dart';
import '/buttons/sm_btn/sm_btn_disabled/sm_btn_disabled_widget.dart';
import '/buttons/sm_btn/sm_btn_link/sm_btn_link_widget.dart';
import '/buttons/sm_btn/sm_btn_primary/sm_btn_primary_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SmBtnPrimary component.
  late SmBtnPrimaryModel smBtnPrimaryModel;
  // Model for SmBtnDefault component.
  late SmBtnDefaultModel smBtnDefaultModel;
  // Model for SmBtnBezeled component.
  late SmBtnBezeledModel smBtnBezeledModel;
  // Model for SmBtnLink component.
  late SmBtnLinkModel smBtnLinkModel;
  // Model for SmBtnDisabled component.
  late SmBtnDisabledModel smBtnDisabledModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    smBtnPrimaryModel = createModel(context, () => SmBtnPrimaryModel());
    smBtnDefaultModel = createModel(context, () => SmBtnDefaultModel());
    smBtnBezeledModel = createModel(context, () => SmBtnBezeledModel());
    smBtnLinkModel = createModel(context, () => SmBtnLinkModel());
    smBtnDisabledModel = createModel(context, () => SmBtnDisabledModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    smBtnPrimaryModel.dispose();
    smBtnDefaultModel.dispose();
    smBtnBezeledModel.dispose();
    smBtnLinkModel.dispose();
    smBtnDisabledModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
