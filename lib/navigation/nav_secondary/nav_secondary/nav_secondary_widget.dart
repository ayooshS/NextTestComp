import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'nav_secondary_model.dart';
export 'nav_secondary_model.dart';

class NavSecondaryWidget extends StatefulWidget {
  const NavSecondaryWidget({
    super.key,
    required this.inputFieldLabel,
    this.inputFieldIcon,
    this.firstIcon,
    this.secondIcon,
    this.thirdIcon,
  });

  final String? inputFieldLabel;
  final Widget? inputFieldIcon;
  final Widget? firstIcon;
  final Widget? secondIcon;
  final Widget? thirdIcon;

  @override
  State<NavSecondaryWidget> createState() => _NavSecondaryWidgetState();
}

class _NavSecondaryWidgetState extends State<NavSecondaryWidget> {
  late NavSecondaryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavSecondaryModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 72.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).elevation01dp,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: TextFormField(
                controller: _model.textController,
                focusNode: _model.textFieldFocusNode,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: widget.inputFieldLabel,
                  hintStyle: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Nunito',
                        color: FlutterFlowTheme.of(context).typeMedium,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).elevation02dp,
                  contentPadding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  suffixIcon: widget.inputFieldIcon,
                ),
                style: FlutterFlowTheme.of(context).bodySmall,
                cursorColor: FlutterFlowTheme.of(context).corePrimary,
                validator: _model.textControllerValidator.asValidator(context),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: 40.0,
                height: 40.0,
                decoration: const BoxDecoration(),
                child: FlutterFlowIconButton(
                  borderRadius: 0.0,
                  borderWidth: 1.0,
                  buttonSize: double.infinity,
                  icon: widget.firstIcon!,
                  onPressed: () {
                    print('IconButton1 pressed ...');
                  },
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: 40.0,
                height: 40.0,
                decoration: const BoxDecoration(),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 0.0,
                  borderWidth: 1.0,
                  buttonSize: double.infinity,
                  icon: widget.secondIcon!,
                  onPressed: () {
                    print('IconButton2 pressed ...');
                  },
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: 40.0,
                height: 40.0,
                decoration: const BoxDecoration(),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 0.0,
                  borderWidth: 1.0,
                  buttonSize: double.infinity,
                  icon: widget.thirdIcon!,
                  onPressed: () {
                    print('IconButton3 pressed ...');
                  },
                ),
              ),
            ),
          ].divide(const SizedBox(width: 16.0)),
        ),
      ),
    );
  }
}
