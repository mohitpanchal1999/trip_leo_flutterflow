import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/component/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import '/pages/component/common_app_bar/common_app_bar_widget.dart';
import '/pages/component/explore_card_view/explore_card_view_widget.dart';
import '/pages/component/see_all_widget/see_all_widget_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'explore_screen_model.dart';
export 'explore_screen_model.dart';

class ExploreScreenWidget extends StatefulWidget {
  const ExploreScreenWidget({super.key});

  @override
  State<ExploreScreenWidget> createState() => _ExploreScreenWidgetState();
}

class _ExploreScreenWidgetState extends State<ExploreScreenWidget> {
  late ExploreScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExploreScreenModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).appBgColor,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                    child: wrapWithModel(
                      model: _model.commonAppBarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const CommonAppBarWidget(
                        showBackArrow: false,
                        appBarTitle: 'San Diego, California',
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
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0),
                        ),
                        border: Border.all(
                          color: const Color(0xFFF1F4F8),
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
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 75.0),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 10.0, 15.0, 10.0),
                                  child: wrapWithModel(
                                    model: _model.seeAllWidgetModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const SeeAllWidgetWidget(
                                      leftTitle: 'Suggestions',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 295.0,
                                    decoration: const BoxDecoration(),
                                    child: ListView(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        wrapWithModel(
                                          model: _model.exploreCardViewModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExploreCardViewWidget(
                                            destImage:
                                                'https://www.saffronrepresentation.com/assets/images/resource/image-tour1.jpg',
                                            destName:
                                                'Pueblo Bonito Sunset Beach ',
                                            destAddress:
                                                'Cabo San Lucas, Mexico',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exploreCardViewModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExploreCardViewWidget(
                                            destImage:
                                                'https://cdn.britannica.com/54/150954-050-F8D14782/Night-view-Parthenon-Athens.jpg',
                                            destName: 'Parthenon Temple',
                                            destAddress: 'Greece',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exploreCardViewModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExploreCardViewWidget(
                                            destImage:
                                                'https://cdn.pixabay.com/photo/2016/11/07/14/03/japan-1805865_1280.jpg',
                                            destName: 'Natural Temple',
                                            destAddress: 'Japan',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exploreCardViewModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExploreCardViewWidget(
                                            destImage:
                                                'https://images.nationalgeographic.org/image/upload/t_edhub_resource_key_image/v1652340658/EducationHub/photos/colosseum.jpg',
                                            destName: 'Colosseum',
                                            destAddress: 'Rome',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exploreCardViewModel5,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExploreCardViewWidget(
                                            destImage:
                                                'https://images.livemint.com/img/2022/08/04/1600x900/Taj-Mahal-sylwia-bartyzel-eU4pipU_8HA-unsplash_1659578942151_1659578950109_1659578950109.jpg',
                                            destName: 'Taj Mahal',
                                            destAddress: 'Agra, India',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 10.0, 15.0, 10.0),
                                  child: wrapWithModel(
                                    model: _model.seeAllWidgetModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const SeeAllWidgetWidget(
                                      leftTitle: 'Popular Destination',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 295.0,
                                    decoration: const BoxDecoration(),
                                    child: ListView(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        wrapWithModel(
                                          model: _model.exploreCardViewModel6,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExploreCardViewWidget(
                                            destImage:
                                                'https://assets.editorial.aetnd.com/uploads/2015/02/topic-golden-gate-bridge-gettyimages-177770941.jpg',
                                            destName: 'Golden Gate Bridge',
                                            destAddress: 'San Francisco Bay',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exploreCardViewModel7,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExploreCardViewWidget(
                                            destImage:
                                                'https://afar.brightspotcdn.com/dims4/default/84cf001/2147483647/strip/true/crop/5205x2762+0+348/resize/1440x764!/quality/90/?url=https%3A%2F%2Fk3-prod-afar-media.s3.us-west-2.amazonaws.com%2Fbrightspot%2F17%2Ff5%2F123bd3ef413a8fb909097fdc69d7%2Fca-2020-morocco-marrakech-souksmedina-gettyimages-1017804314.jpg',
                                            destName: 'Marrakesh',
                                            destAddress: 'Morocco',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exploreCardViewModel8,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExploreCardViewWidget(
                                            destImage:
                                                'https://media.timeout.com/images/105859738/image.jpg',
                                            destName: 'İstanbul',
                                            destAddress: 'Turkey',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exploreCardViewModel9,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExploreCardViewWidget(
                                            destImage:
                                                'https://i.pinimg.com/736x/14/6e/86/146e8630088ea5a21edc1ea02a81fb37.jpg',
                                            destName: 'London',
                                            destAddress:
                                                'England, United Kingdom',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exploreCardViewModel10,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExploreCardViewWidget(
                                            destImage:
                                                'https://adventuresome.in/wp-content/uploads/2019/05/dudhsagar.jpeg',
                                            destName: 'Dudhsagar Falls',
                                            destAddress: 'Goa, India',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 10.0, 15.0, 10.0),
                                  child: wrapWithModel(
                                    model: _model.seeAllWidgetModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const SeeAllWidgetWidget(
                                      leftTitle: 'Popular Destination',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 300.0,
                                  decoration: const BoxDecoration(),
                                  child: ListView(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Container(
                                          width: 210.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  0.0,
                                                  2.0,
                                                ),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Stack(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.0, -1.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              const BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    12.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    12.0),
                                                          ),
                                                          child: Image.network(
                                                            'https://assets.editorial.aetnd.com/uploads/2009/12/gettyimages-858637934.jpg',
                                                            width:
                                                                double.infinity,
                                                            height: 190.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.0, 1.0),
                                                        child: Stack(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          45.0,
                                                                          130.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/like_container.svg',
                                                                width: 155.0,
                                                                height: 40.0,
                                                                fit: BoxFit
                                                                    .contain,
                                                                alignment:
                                                                    const Alignment(
                                                                        -1.0,
                                                                        0.0),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          75.0,
                                                                          140.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .favorite_sharp,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    size: 20.0,
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      '15 K',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            fontSize:
                                                                                10.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        20.0,
                                                                    child:
                                                                        VerticalDivider(
                                                                      thickness:
                                                                          1.0,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                    ),
                                                                  ),
                                                                  FaIcon(
                                                                    FontAwesomeIcons
                                                                        .globe,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    size: 19.0,
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      '+44',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            fontSize:
                                                                                10.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 5.0),
                                                  child: Text(
                                                    'Grand Canyon',
                                                    textAlign: TextAlign.start,
                                                    maxLines: 2,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Icon(
                                                      Icons.location_on,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .textGrey,
                                                      size: 18.0,
                                                    ),
                                                    Text(
                                                      'Arizona',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .textGrey,
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Container(
                                          width: 210.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  0.0,
                                                  2.0,
                                                ),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Stack(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          const BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                12.0),
                                                        topRight:
                                                            Radius.circular(
                                                                12.0),
                                                      ),
                                                      child: Image.network(
                                                        'https://www.discoverwalks.com/blog/wp-content/uploads/2019/11/photo-1543349689-9a4d426bee8e-816x591.jpg',
                                                        width: double.infinity,
                                                        height: 190.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 1.0),
                                                      child: Stack(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        45.0,
                                                                        130.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/images/like_container.svg',
                                                              width: 155.0,
                                                              height: 40.0,
                                                              fit: BoxFit
                                                                  .contain,
                                                              alignment:
                                                                  const Alignment(
                                                                      -1.0,
                                                                      0.0),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        75.0,
                                                                        140.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .favorite_sharp,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  size: 20.0,
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '15 K',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: 20.0,
                                                                  child:
                                                                      VerticalDivider(
                                                                    thickness:
                                                                        1.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                  ),
                                                                ),
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .globe,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  size: 19.0,
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '+44',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 5.0),
                                                  child: Text(
                                                    'Eiffel Tower',
                                                    textAlign: TextAlign.start,
                                                    maxLines: 2,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Icon(
                                                      Icons.location_on,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .textGrey,
                                                      size: 18.0,
                                                    ),
                                                    Text(
                                                      'Paris, New York',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .textGrey,
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Container(
                                          width: 210.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  0.0,
                                                  2.0,
                                                ),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Stack(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          const BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                12.0),
                                                        topRight:
                                                            Radius.circular(
                                                                12.0),
                                                      ),
                                                      child: Image.network(
                                                        'https://www.fodors.com/wp-content/uploads/2022/07/1-Avoiding-Crowds-shutterstock_1888737391.jpg',
                                                        width: double.infinity,
                                                        height: 190.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 1.0),
                                                      child: Stack(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        45.0,
                                                                        130.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/images/like_container.svg',
                                                              width: 155.0,
                                                              height: 40.0,
                                                              fit: BoxFit
                                                                  .contain,
                                                              alignment:
                                                                  const Alignment(
                                                                      -1.0,
                                                                      0.0),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        75.0,
                                                                        140.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .favorite_sharp,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  size: 20.0,
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '15 K',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: 20.0,
                                                                  child:
                                                                      VerticalDivider(
                                                                    thickness:
                                                                        1.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                  ),
                                                                ),
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .globe,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  size: 19.0,
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '+44',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 5.0),
                                                  child: Text(
                                                    'Christ the Redeemer',
                                                    textAlign: TextAlign.start,
                                                    maxLines: 2,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Icon(
                                                      Icons.location_on,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .textGrey,
                                                      size: 18.0,
                                                    ),
                                                    Text(
                                                      'Rio de Janeiro',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .textGrey,
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Container(
                                          width: 210.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  0.0,
                                                  2.0,
                                                ),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Stack(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          const BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                12.0),
                                                        topRight:
                                                            Radius.circular(
                                                                12.0),
                                                      ),
                                                      child: Image.network(
                                                        'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/07/be/ec/eb.jpg',
                                                        width: double.infinity,
                                                        height: 190.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 1.0),
                                                      child: Stack(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        45.0,
                                                                        130.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/images/like_container.svg',
                                                              width: 155.0,
                                                              height: 40.0,
                                                              fit: BoxFit
                                                                  .contain,
                                                              alignment:
                                                                  const Alignment(
                                                                      -1.0,
                                                                      0.0),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        75.0,
                                                                        140.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .favorite_sharp,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  size: 20.0,
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '15 K',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: 20.0,
                                                                  child:
                                                                      VerticalDivider(
                                                                    thickness:
                                                                        1.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                  ),
                                                                ),
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .globe,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  size: 19.0,
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '+44',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 5.0),
                                                  child: Text(
                                                    'Burj Khalifa',
                                                    textAlign: TextAlign.start,
                                                    maxLines: 2,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Icon(
                                                      Icons.location_on,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .textGrey,
                                                      size: 18.0,
                                                    ),
                                                    Text(
                                                      'Dubai',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .textGrey,
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Container(
                                          width: 210.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  0.0,
                                                  2.0,
                                                ),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Stack(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          const BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                12.0),
                                                        topRight:
                                                            Radius.circular(
                                                                12.0),
                                                      ),
                                                      child: Image.network(
                                                        'https://images.livemint.com/img/2022/08/04/1600x900/Taj-Mahal-sylwia-bartyzel-eU4pipU_8HA-unsplash_1659578942151_1659578950109_1659578950109.jpg',
                                                        width: double.infinity,
                                                        height: 190.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 1.0),
                                                      child: Stack(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        45.0,
                                                                        130.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/images/like_container.svg',
                                                              width: 155.0,
                                                              height: 40.0,
                                                              fit: BoxFit
                                                                  .contain,
                                                              alignment:
                                                                  const Alignment(
                                                                      -1.0,
                                                                      0.0),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        75.0,
                                                                        140.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .favorite_sharp,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  size: 20.0,
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '15 K',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: 20.0,
                                                                  child:
                                                                      VerticalDivider(
                                                                    thickness:
                                                                        1.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                  ),
                                                                ),
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .globe,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  size: 19.0,
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '+44',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontSize:
                                                                              10.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 5.0),
                                                  child: Text(
                                                    'Taj Mahal',
                                                    textAlign: TextAlign.start,
                                                    maxLines: 2,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Icon(
                                                      Icons.location_on,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .textGrey,
                                                      size: 18.0,
                                                    ),
                                                    Text(
                                                      'Agra, India',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .textGrey,
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 295.0,
                                    decoration: const BoxDecoration(),
                                    child: ListView(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        wrapWithModel(
                                          model: _model.exploreCardViewModel11,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExploreCardViewWidget(
                                            destImage:
                                                'https://assets.editorial.aetnd.com/uploads/2009/12/gettyimages-858637934.jpg',
                                            destName: 'Grand Canyon',
                                            destAddress: 'Arizona',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exploreCardViewModel12,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExploreCardViewWidget(
                                            destImage:
                                                'https://www.discoverwalks.com/blog/wp-content/uploads/2019/11/photo-1543349689-9a4d426bee8e-816x591.jpg',
                                            destName: 'Eiffel Tower',
                                            destAddress: 'Paris, New York',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exploreCardViewModel13,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExploreCardViewWidget(
                                            destImage:
                                                'https://www.fodors.com/wp-content/uploads/2022/07/1-Avoiding-Crowds-shutterstock_1888737391.jpg',
                                            destName: 'Christ the Redeemer',
                                            destAddress:
                                                'Rio de Janeiro, Brazil',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exploreCardViewModel14,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExploreCardViewWidget(
                                            destImage:
                                                'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/07/be/ec/eb.jpg',
                                            destName: 'Burj Khalifa',
                                            destAddress: 'Dubail',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.exploreCardViewModel15,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const ExploreCardViewWidget(
                                            destImage:
                                                'https://whyweseek.com/wp-content/uploads/2018/03/Golden-Temple-at-Night-Amritsar.jpg',
                                            destName: 'Golden Temple',
                                            destAddress: 'Amritsar, India',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.bottomNavigationBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const BottomNavigationBarWidget(
                    selectedPageIndex: 2,
                    hidden: false,
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
