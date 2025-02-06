import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/component/common_app_bar/common_app_bar_widget.dart';
import '/pages/component/itinerary_card_view/itinerary_card_view_widget.dart';
import '/pages/component/search_card_view/search_card_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'profile_screen_model.dart';
export 'profile_screen_model.dart';

class ProfileScreenWidget extends StatefulWidget {
  const ProfileScreenWidget({super.key});

  @override
  State<ProfileScreenWidget> createState() => _ProfileScreenWidgetState();
}

class _ProfileScreenWidgetState extends State<ProfileScreenWidget>
    with TickerProviderStateMixin {
  late ProfileScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileScreenModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
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
                  child: const CommonAppBarWidget(
                    showBackArrow: true,
                    appBarTitle: 'Profile',
                    isHideProfile: false,
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
                        const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    width: 120.0,
                                    height: 120.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.memory(
                                      _model.uploadedLocalFile.bytes ??
                                          Uint8List.fromList([]),
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) =>
                                              Image.asset(
                                        'assets/images/error_image.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    90.0, 95.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    final selectedMedia =
                                        await selectMediaWithSourceBottomSheet(
                                      context: context,
                                      imageQuality: 100,
                                      allowPhoto: true,
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                      textColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      pickerFontFamily: 'Inter',
                                    );
                                    if (selectedMedia != null &&
                                        selectedMedia.every((m) =>
                                            validateFileFormat(
                                                m.storagePath, context))) {
                                      safeSetState(
                                          () => _model.isDataUploading = true);
                                      var selectedUploadedFiles =
                                          <FFUploadedFile>[];

                                      try {
                                        selectedUploadedFiles = selectedMedia
                                            .map((m) => FFUploadedFile(
                                                  name: m.storagePath
                                                      .split('/')
                                                      .last,
                                                  bytes: m.bytes,
                                                  height: m.dimensions?.height,
                                                  width: m.dimensions?.width,
                                                  blurHash: m.blurHash,
                                                ))
                                            .toList();
                                      } finally {
                                        _model.isDataUploading = false;
                                      }
                                      if (selectedUploadedFiles.length ==
                                          selectedMedia.length) {
                                        safeSetState(() {
                                          _model.uploadedLocalFile =
                                              selectedUploadedFiles.first;
                                        });
                                      } else {
                                        safeSetState(() {});
                                        return;
                                      }
                                    }
                                  },
                                  child: Container(
                                    width: 32.0,
                                    height: 32.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: SvgPicture.asset(
                                          'assets/images/edit_icon.svg',
                                          width: 300.0,
                                          height: 200.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Text(
                            'Hello World',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: const Alignment(0.0, 0),
                                child: TabBar(
                                  labelColor:
                                      FlutterFlowTheme.of(context).primary,
                                  unselectedLabelColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                  unselectedLabelStyle:
                                      FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                  indicatorColor:
                                      FlutterFlowTheme.of(context).primary,
                                  tabs: const [
                                    Tab(
                                      text: 'Destinations',
                                    ),
                                    Tab(
                                      text: 'Itineraries',
                                    ),
                                  ],
                                  controller: _model.tabBarController,
                                  onTap: (i) async {
                                    [() async {}, () async {}][i]();
                                  },
                                ),
                              ),
                              Expanded(
                                child: TabBarView(
                                  controller: _model.tabBarController,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 15.0),
                                      child: ListView(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              wrapWithModel(
                                                model:
                                                    _model.searchCardViewModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SearchCardViewWidget(
                                                  imageUrl:
                                                      'https://afar.brightspotcdn.com/dims4/default/84cf001/2147483647/strip/true/crop/5205x2762+0+348/resize/1440x764!/quality/90/?url=https%3A%2F%2Fk3-prod-afar-media.s3.us-west-2.amazonaws.com%2Fbrightspot%2F17%2Ff5%2F123bd3ef413a8fb909097fdc69d7%2Fca-2020-morocco-marrakech-souksmedina-gettyimages-1017804314.jpg',
                                                  title: 'Marrakesh',
                                                  subTitle: 'Morocco',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.searchCardViewModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SearchCardViewWidget(
                                                  imageUrl:
                                                      'https://cdn.britannica.com/54/150954-050-F8D14782/Night-view-Parthenon-Athens.jpg',
                                                  title: 'Parthenon Temple',
                                                  subTitle: 'Greece',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.searchCardViewModel3,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SearchCardViewWidget(
                                                  imageUrl:
                                                      'https://cdn.pixabay.com/photo/2016/11/07/14/03/japan-1805865_1280.jpg',
                                                  title: 'Natural Temple',
                                                  subTitle: 'Japan',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.searchCardViewModel4,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SearchCardViewWidget(
                                                  imageUrl:
                                                      'https://images.nationalgeographic.org/image/upload/t_edhub_resource_key_image/v1652340658/EducationHub/photos/colosseum.jpg',
                                                  title: 'Colosseum',
                                                  subTitle: 'Rome',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.searchCardViewModel5,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SearchCardViewWidget(
                                                  imageUrl:
                                                      'https://adventuresome.in/wp-content/uploads/2019/05/dudhsagar.jpeg',
                                                  title: 'Dudhsagar Falls',
                                                  subTitle: 'Goa, India',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.searchCardViewModel6,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SearchCardViewWidget(
                                                  imageUrl:
                                                      'https://assets.editorial.aetnd.com/uploads/2015/02/topic-golden-gate-bridge-gettyimages-177770941.jpg',
                                                  title: 'Golden Gate Bridge',
                                                  subTitle: 'San Francisco Bay',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.searchCardViewModel7,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SearchCardViewWidget(
                                                  imageUrl:
                                                      'https://images.livemint.com/img/2022/08/04/1600x900/Taj-Mahal-sylwia-bartyzel-eU4pipU_8HA-unsplash_1659578942151_1659578950109_1659578950109.jpg',
                                                  title: 'Taj Mahal',
                                                  subTitle: 'Agra, India',
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.searchCardViewModel8,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
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
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 20.0, 10.0, 15.0),
                                      child: ListView(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        children: [
                                          wrapWithModel(
                                            model:
                                                _model.itineraryCardViewModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const ItineraryCardViewWidget(),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.itineraryCardViewModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const ItineraryCardViewWidget(),
                                          ),
                                          wrapWithModel(
                                            model:
                                                _model.itineraryCardViewModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const ItineraryCardViewWidget(),
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
                      ],
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
