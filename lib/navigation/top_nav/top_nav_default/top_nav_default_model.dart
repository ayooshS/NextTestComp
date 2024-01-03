import '/flutter_flow/flutter_flow_util.dart';
import '/navigation/top_nav/top_nav_icon/initials/initials_widget.dart';
import 'top_nav_default_widget.dart' show TopNavDefaultWidget;
import 'package:flutter/material.dart';

class TopNavDefaultModel extends FlutterFlowModel<TopNavDefaultWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Initials component.
  late InitialsModel initialsModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    initialsModel = createModel(context, () => InitialsModel());
  }

  @override
  void dispose() {
    initialsModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
