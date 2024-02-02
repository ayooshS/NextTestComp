import '/button/md_btn/md_btn_default/md_btn_default_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navigation/nav_bottom/nav_bottom/nav_bottom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'source_model.dart';
export 'source_model.dart';

class SourceWidget extends StatefulWidget {
  const SourceWidget({super.key});

  @override
  State<SourceWidget> createState() => _SourceWidgetState();
}

class _SourceWidgetState extends State<SourceWidget> {
  late SourceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SourceModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).btnColor,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Source',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Nunito',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.mdBtnDefaultModel,
                    updateCallback: () => setState(() {}),
                    child: const MdBtnDefaultWidget(),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.navBottomModel,
                  updateCallback: () => setState(() {}),
                  child: const NavBottomWidget(
                    selectedPageIndex: 3,
                    hiddenNav: false,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
