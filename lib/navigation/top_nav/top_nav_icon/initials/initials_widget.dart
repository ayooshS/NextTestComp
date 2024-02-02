import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'initials_model.dart';
export 'initials_model.dart';

class InitialsWidget extends StatefulWidget {
  const InitialsWidget({
    super.key,
    String? initialText,
  }) : initialText = initialText ?? 'A';

  final String initialText;

  @override
  State<InitialsWidget> createState() => _InitialsWidgetState();
}

class _InitialsWidgetState extends State<InitialsWidget> {
  late InitialsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InitialsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        width: 36.0,
        height: 36.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).surfaceBackgroundGlass,
          shape: BoxShape.circle,
          border: Border.all(
            color: FlutterFlowTheme.of(context).inputBorder,
            width: 0.5,
          ),
        ),
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Text(
            widget.initialText.maybeHandleOverflow(
              maxChars: 1,
              replacement: '…',
            ),
            style: FlutterFlowTheme.of(context).labelMedium,
          ),
        ),
      ),
    );
  }
}
