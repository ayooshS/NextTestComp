import '/flutter_flow/flutter_flow_util.dart';
import '/navigation/top_nav/top_nav_icon/icon/icon_widget.dart';
import 'top_nav_brand_widget.dart' show TopNavBrandWidget;
import 'package:flutter/material.dart';

class TopNavBrandModel extends FlutterFlowModel<TopNavBrandWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Icon component.
  late IconModel iconModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    iconModel = createModel(context, () => IconModel());
  }

  @override
  void dispose() {
    iconModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
