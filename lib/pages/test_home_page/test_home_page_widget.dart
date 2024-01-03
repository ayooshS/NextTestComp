import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navigation/nav_bottom/nav_bottom/nav_bottom_widget.dart';
import '/navigation/nav_secondary/nav_secondary/nav_secondary_widget.dart';
import '/navigation/top_nav/top_nav_brand/top_nav_brand_widget.dart';
import '/navigation/top_nav/top_nav_default/top_nav_default_widget.dart';
import '/snack_bar/s_b_default/s_b_default_widget.dart';
import '/snack_bar/s_b_semantic/s_b_semantic_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'test_home_page_model.dart';
export 'test_home_page_model.dart';

class TestHomePageWidget extends StatefulWidget {
  const TestHomePageWidget({super.key});

  @override
  _TestHomePageWidgetState createState() => _TestHomePageWidgetState();
}

class _TestHomePageWidgetState extends State<TestHomePageWidget> {
  late TestHomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestHomePageModel());
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
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Stack(
              alignment: const AlignmentDirectional(0.0, 0.0),
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: wrapWithModel(
                    model: _model.topNavDefaultModel,
                    updateCallback: () => setState(() {}),
                    child: TopNavDefaultWidget(
                      icon1: Icon(
                        Icons.shopping_cart_outlined,
                        color: FlutterFlowTheme.of(context).typeHigh,
                      ),
                      icon2: Icon(
                        Icons.support_agent_rounded,
                        color: FlutterFlowTheme.of(context).typeHigh,
                      ),
                      icon3: Icon(
                        Icons.cancel_outlined,
                        color: FlutterFlowTheme.of(context).typeHigh,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 64.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: wrapWithModel(
                            model: _model.topNavBrandModel,
                            updateCallback: () => setState(() {}),
                            child: TopNavBrandWidget(
                              topNavIcon: Icon(
                                Icons.chevron_left_rounded,
                                color: FlutterFlowTheme.of(context).typeHigh,
                                size: 24.0,
                              ),
                              icon1: Icon(
                                Icons.shopping_cart_outlined,
                                color: FlutterFlowTheme.of(context).typeHigh,
                              ),
                              icon2: Icon(
                                Icons.shopping_cart_outlined,
                                color: FlutterFlowTheme.of(context).typeHigh,
                              ),
                            ),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.navSecondaryModel,
                          updateCallback: () => setState(() {}),
                          child: NavSecondaryWidget(
                            inputFieldLabel: 'Search',
                            inputFieldIcon: Icon(
                              Icons.search_rounded,
                              color: FlutterFlowTheme.of(context).typeMedium,
                              size: 20.0,
                            ),
                            firstIcon: Icon(
                              Icons.filter_list_rounded,
                              color: FlutterFlowTheme.of(context).typeHigh,
                              size: 24.0,
                            ),
                            secondIcon: Icon(
                              Icons.filter_list_rounded,
                              color: FlutterFlowTheme.of(context).typeHigh,
                              size: 24.0,
                            ),
                            thirdIcon: Icon(
                              Icons.filter_list_rounded,
                              color: FlutterFlowTheme.of(context).typeHigh,
                              size: 24.0,
                            ),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.sBDefaultModel,
                          updateCallback: () => setState(() {}),
                          child: const SBDefaultWidget(),
                        ),
                        wrapWithModel(
                          model: _model.sBSemanticModel,
                          updateCallback: () => setState(() {}),
                          child: const SBSemanticWidget(),
                        ),
                      ].divide(const SizedBox(height: 0.0)),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: wrapWithModel(
                    model: _model.navBottomModel,
                    updateCallback: () => setState(() {}),
                    child: const NavBottomWidget(
                      selectedPageIndex: 1,
                      hiddenNav: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
