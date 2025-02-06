import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component/common_app_bar/common_app_bar_widget.dart';
import '/pages/component/search_card_view/search_card_view_widget.dart';
import 'package:flutter/material.dart';
import 'search_result_screen_model.dart';
export 'search_result_screen_model.dart';

class SearchResultScreenWidget extends StatefulWidget {
  const SearchResultScreenWidget({
    super.key,
    required this.appBarTitle,
  });

  final String? appBarTitle;

  @override
  State<SearchResultScreenWidget> createState() =>
      _SearchResultScreenWidgetState();
}

class _SearchResultScreenWidgetState extends State<SearchResultScreenWidget> {
  late SearchResultScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchResultScreenModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).appBgColor,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: wrapWithModel(
                  model: _model.commonAppBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: CommonAppBarWidget(
                    showBackArrow: true,
                    appBarTitle: valueOrDefault<String>(
                      widget.appBarTitle,
                      'San Diego, California',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  constraints: const BoxConstraints(
                    maxWidth: double.infinity,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    ),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).borderColor,
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: const BoxDecoration(),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('google_app_view');
                                  },
                                  child: Text(
                                    'Map View',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 1.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child: Container(
                                      width: 35.0,
                                      height: 35.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 0.2,
                                            color: Color(0x33000000),
                                            offset: Offset(
                                              0.0,
                                              1.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .textGrey,
                                        ),
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(
                                          Icons.filter_alt_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 22.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              wrapWithModel(
                                model: _model.searchCardViewModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: const SearchCardViewWidget(
                                  imageUrl:
                                      'https://afar.brightspotcdn.com/dims4/default/84cf001/2147483647/strip/true/crop/5205x2762+0+348/resize/1440x764!/quality/90/?url=https%3A%2F%2Fk3-prod-afar-media.s3.us-west-2.amazonaws.com%2Fbrightspot%2F17%2Ff5%2F123bd3ef413a8fb909097fdc69d7%2Fca-2020-morocco-marrakech-souksmedina-gettyimages-1017804314.jpg',
                                  title: 'Marrakesh',
                                  subTitle: 'Morocco',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.searchCardViewModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: const SearchCardViewWidget(
                                  imageUrl:
                                      'https://cdn.britannica.com/54/150954-050-F8D14782/Night-view-Parthenon-Athens.jpg',
                                  title: 'Parthenon Temple',
                                  subTitle: 'Greece',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.searchCardViewModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: const SearchCardViewWidget(
                                  imageUrl:
                                      'https://cdn.pixabay.com/photo/2016/11/07/14/03/japan-1805865_1280.jpg',
                                  title: 'Natural Temple',
                                  subTitle: 'Japan',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.searchCardViewModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: const SearchCardViewWidget(
                                  imageUrl:
                                      'https://images.nationalgeographic.org/image/upload/t_edhub_resource_key_image/v1652340658/EducationHub/photos/colosseum.jpg',
                                  title: 'Colosseum',
                                  subTitle: 'Rome',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.searchCardViewModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: const SearchCardViewWidget(
                                  imageUrl:
                                      'https://adventuresome.in/wp-content/uploads/2019/05/dudhsagar.jpeg',
                                  title: 'Dudhsagar Falls',
                                  subTitle: 'Goa, India',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.searchCardViewModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: const SearchCardViewWidget(
                                  imageUrl:
                                      'https://assets.editorial.aetnd.com/uploads/2015/02/topic-golden-gate-bridge-gettyimages-177770941.jpg',
                                  title: 'Golden Gate Bridge',
                                  subTitle: 'San Francisco Bay',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.searchCardViewModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: const SearchCardViewWidget(
                                  imageUrl:
                                      'https://images.livemint.com/img/2022/08/04/1600x900/Taj-Mahal-sylwia-bartyzel-eU4pipU_8HA-unsplash_1659578942151_1659578950109_1659578950109.jpg',
                                  title: 'Taj Mahal',
                                  subTitle: 'Agra, India',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.searchCardViewModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: const SearchCardViewWidget(
                                  imageUrl:
                                      'https://media.timeout.com/images/105859738/image.jpg',
                                  title: 'İstanbul',
                                  subTitle: 'Turkey',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
