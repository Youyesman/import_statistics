// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:xml/xml.dart';

void main() {
  final bookshelfXml =
      '''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<cargCsclPrgsInfoQryRtnVo>
<ntceInfo/>
<cargCsclPrgsInfoQryVo>
<csclPrgsStts>수입신고수리</csclPrgsStts>
<vydf>0457</vydf>
<rlseDtyPridPassTpcd>N</rlseDtyPridPassTpcd>
<prnm>METAL PUZZLES</prnm>
<ldprCd>CNWEI</ldprCd>
<shipNat>PA</shipNat>
<blPt>C</blPt>
<dsprNm>인천항</dsprNm>
<etprDt>20211011</etprDt>
<prgsStCd>CAGE12</prgsStCd>
<msrm>2.81</msrm>
<wghtUt>KG</wghtUt>
<dsprCd>KRINC</dsprCd>
<cntrGcnt>1</cntrGcnt>
<cargTp>수입 일반화물</cargTp>
<shcoFlcoSgn>WDFC</shcoFlcoSgn>
<pckGcnt>88</pckGcnt>
<etprCstm>인천세관</etprCstm>
<shipNm>NEWGOLDENBRIDGE 7</shipNm>
<hblNo>FESS2110007</hblNo>
<prcsDttm>20211019113825</prcsDttm>
<frwrSgn>MAMM</frwrSgn>
<spcnCargCd/>
<ttwg>1172.2</ttwg>
<ldprNm>Weihai</ldprNm>
<frwrEntsConm>주식회사 마스터해운항공</frwrEntsConm>
<dclrDelyAdtxYn>N</dclrDelyAdtxYn>
<mtTrgtCargYnNm>N</mtTrgtCargYnNm>
<cargMtNo>21WDFCA457I06370010</cargMtNo>
<cntrNo>WDFU3011856</cntrNo>
<mblNo>WDFCGBA04571057</mblNo>
<blPtNm>Consol</blPtNm>
<lodCntyCd>CN</lodCntyCd>
<prgsStts>반출완료</prgsStts>
<shcoFlco>(주)위동해운</shcoFlco>
<pckUt>CT</pckUt>
<shipNatNm>파나마</shipNatNm>
<agnc>(주) 위동해운</agnc>
</cargCsclPrgsInfoQryVo>
<tCnt>15</tCnt>
<cargCsclPrgsInfoDtlQryVo>
<shedNm>(주)스카이국제운송</shedNm>
<prcsDttm>20211019113825</prcsDttm>
<dclrNo>0200611621R0027145</dclrNo>
<rlbrDttm>2021-10-19 09:43:27</rlbrDttm>
<wght>1172.2</wght>
<rlbrBssNo>1309021100022M</rlbrBssNo>
<bfhnGdncCn/>
<wghtUt>KG</wghtUt>
<pckGcnt>88</pckGcnt>
<cargTrcnRelaBsopTpcd>반출신고</cargTrcnRelaBsopTpcd>
<pckUt>CT</pckUt>
<rlbrCn>수입신고 수리후 반출</rlbrCn>
<shedSgn>02006116</shedSgn>
</cargCsclPrgsInfoDtlQryVo>
<cargCsclPrgsInfoDtlQryVo>
<shedNm>(주)스카이국제운송</shedNm>
<prcsDttm>20211018164333</prcsDttm>
<dclrNo>1309021100022M</dclrNo>
<rlbrDttm/>
<wght>1172.2</wght>
<rlbrBssNo/>
<bfhnGdncCn/>
<wghtUt>KG</wghtUt>
<pckGcnt>88</pckGcnt>
<cargTrcnRelaBsopTpcd>수입신고수리</cargTrcnRelaBsopTpcd>
<pckUt>CT</pckUt>
<rlbrCn/>
<shedSgn>02006116</shedSgn>
</cargCsclPrgsInfoDtlQryVo>
<cargCsclPrgsInfoDtlQryVo>
<shedNm>(주)스카이국제운송</shedNm>
<prcsDttm>20211018101546</prcsDttm>
<dclrNo>1309021100022M</dclrNo>
<rlbrDttm/>
<wght>1172.2</wght>
<rlbrBssNo/>
<bfhnGdncCn/>
<wghtUt>KG</wghtUt>
<pckGcnt>88</pckGcnt>
<cargTrcnRelaBsopTpcd>수입(사용소비) 결재통보</cargTrcnRelaBsopTpcd>
<pckUt>CT</pckUt>
<rlbrCn/>
<shedSgn>02006116</shedSgn>
</cargCsclPrgsInfoDtlQryVo>
<cargCsclPrgsInfoDtlQryVo>
<shedNm>(주)스카이국제운송</shedNm>
<prcsDttm>20211018091537</prcsDttm>
<dclrNo>1309021100022M</dclrNo>
<rlbrDttm/>
<wght>1172.2</wght>
<rlbrBssNo/>
<bfhnGdncCn/>
<wghtUt>KG</wghtUt>
<pckGcnt>88</pckGcnt>
<cargTrcnRelaBsopTpcd>수입(사용소비) 심사진행</cargTrcnRelaBsopTpcd>
<pckUt>CT</pckUt>
<rlbrCn/>
<shedSgn>02006116</shedSgn>
</cargCsclPrgsInfoDtlQryVo>
<cargCsclPrgsInfoDtlQryVo>
<shedNm>(주)스카이국제운송</shedNm>
<prcsDttm>20211018091526</prcsDttm>
<dclrNo>1309021100022M</dclrNo>
<rlbrDttm/>
<wght>1172.2</wght>
<rlbrBssNo>스마일관세사무소</rlbrBssNo>
<bfhnGdncCn/>
<wghtUt>KG</wghtUt>
<pckGcnt>88</pckGcnt>
<cargTrcnRelaBsopTpcd>수입신고</cargTrcnRelaBsopTpcd>
<pckUt>CT</pckUt>
<rlbrCn/>
<shedSgn>02006116</shedSgn>
</cargCsclPrgsInfoDtlQryVo>
<cargCsclPrgsInfoDtlQryVo>
<shedNm>(주)스카이국제운송</shedNm>
<prcsDttm>20211012145711</prcsDttm>
<dclrNo>0200611621P0050876</dclrNo>
<rlbrDttm>2021-10-12 14:56:36</rlbrDttm>
<wght>1172.2</wght>
<rlbrBssNo>020D8020009021622760</rlbrBssNo>
<bfhnGdncCn>[부가사항] (주)스카이국제운송의 장치기간은 최대 6 개월 입니다.</bfhnGdncCn>
<wghtUt>KG</wghtUt>
<pckGcnt>88</pckGcnt>
<cargTrcnRelaBsopTpcd>반입신고</cargTrcnRelaBsopTpcd>
<pckUt>CT</pckUt>
<rlbrCn>보세운송 반입</rlbrCn>
<shedSgn>02006116/A구역</shedSgn>
</cargCsclPrgsInfoDtlQryVo>
<cargCsclPrgsInfoDtlQryVo>
<shedNm>인천항국제여객부두 컨테이너 보세창고</shedNm>
<prcsDttm>20211012103530</prcsDttm>
<dclrNo>02012018210493923A</dclrNo>
<rlbrDttm>2021-10-12 10:35:17</rlbrDttm>
<wght>1172.2</wght>
<rlbrBssNo>020D8020009021622760</rlbrBssNo>
<bfhnGdncCn/>
<wghtUt>KG</wghtUt>
<pckGcnt>88</pckGcnt>
<cargTrcnRelaBsopTpcd>반출신고</cargTrcnRelaBsopTpcd>
<pckUt>CT</pckUt>
<rlbrCn>보세운송 반출</rlbrCn>
<shedSgn>02012018</shedSgn>
</cargCsclPrgsInfoDtlQryVo>
<cargCsclPrgsInfoDtlQryVo>
<shedNm>인천항국제여객부두 컨테이너 보세창고</shedNm>
<prcsDttm>20211011112520</prcsDttm>
<dclrNo>02012018210495530A</dclrNo>
<rlbrDttm>2021-10-11 11:25:03</rlbrDttm>
<wght>1172.2</wght>
<rlbrBssNo/>
<bfhnGdncCn>[부가사항] 인천항국제여객부두 컨테이너 보세창고의 장치기간은 최대 2 개월 입니다.</bfhnGdncCn>
<wghtUt>KG</wghtUt>
<pckGcnt>88</pckGcnt>
<cargTrcnRelaBsopTpcd>반입신고</cargTrcnRelaBsopTpcd>
<pckUt>CT</pckUt>
<rlbrCn>입항 반입</rlbrCn>
<shedSgn>02012018</shedSgn>
</cargCsclPrgsInfoDtlQryVo>
<cargCsclPrgsInfoDtlQryVo>
<shedNm>인천항국제여객부두 컨테이너 보세창고</shedNm>
<prcsDttm>20211011094040</prcsDttm>
<dclrNo>21020112591</dclrNo>
<rlbrDttm/>
<wght>1172.2</wght>
<rlbrBssNo/>
<bfhnGdncCn/>
<wghtUt>KG</wghtUt>
<pckGcnt>88</pckGcnt>
<cargTrcnRelaBsopTpcd>하선신고 수리</cargTrcnRelaBsopTpcd>
<pckUt>CT</pckUt>
<rlbrCn/>
<shedSgn>02012018</shedSgn>
</cargCsclPrgsInfoDtlQryVo>
<cargCsclPrgsInfoDtlQryVo>
<shedNm>인천항국제여객부두 컨테이너 보세창고</shedNm>
<prcsDttm>20211011090731</prcsDttm>
<dclrNo>020D8020009021622760</dclrNo>
<rlbrDttm>(도)02006116(주)스카이 </rlbrDttm>
<wght>1172.2</wght>
<rlbrBssNo>(주)디티씨</rlbrBssNo>
<bfhnGdncCn/>
<wghtUt>KG</wghtUt>
<pckGcnt>88</pckGcnt>
<cargTrcnRelaBsopTpcd>보세운송 신고 수리</cargTrcnRelaBsopTpcd>
<pckUt>CT</pckUt>
<rlbrCn/>
<shedSgn>02012018/입항전운송</shedSgn>
</cargCsclPrgsInfoDtlQryVo>
<cargCsclPrgsInfoDtlQryVo>
<shedNm>인천항국제여객부두 컨테이너 보세창고</shedNm>
<prcsDttm>20211011090517</prcsDttm>
<dclrNo>020D8020009021622760</dclrNo>
<rlbrDttm/>
<wght>1172.2</wght>
<rlbrBssNo/>
<bfhnGdncCn/>
<wghtUt>KG</wghtUt>
<pckGcnt>88</pckGcnt>
<cargTrcnRelaBsopTpcd>보세운송 신고 접수</cargTrcnRelaBsopTpcd>
<pckUt>CT</pckUt>
<rlbrCn/>
<shedSgn>02012018/입항전운송</shedSgn>
</cargCsclPrgsInfoDtlQryVo>
<cargCsclPrgsInfoDtlQryVo>
<shedNm/>
<prcsDttm>20211011083159</prcsDttm>
<dclrNo>21WDFCA457I00000001</dclrNo>
<rlbrDttm/>
<wght/>
<rlbrBssNo/>
<bfhnGdncCn/>
<wghtUt>KG</wghtUt>
<pckGcnt>0</pckGcnt>
<cargTrcnRelaBsopTpcd>입항적하목록 운항정보 정정</cargTrcnRelaBsopTpcd>
<pckUt/>
<rlbrCn/>
<shedSgn/>
</cargCsclPrgsInfoDtlQryVo>
<cargCsclPrgsInfoDtlQryVo>
<shedNm/>
<prcsDttm>20211011083158</prcsDttm>
<dclrNo>21WDFCA457I</dclrNo>
<rlbrDttm/>
<wght/>
<rlbrBssNo/>
<bfhnGdncCn/>
<wghtUt>KG</wghtUt>
<pckGcnt>0</pckGcnt>
<cargTrcnRelaBsopTpcd>입항보고 수리</cargTrcnRelaBsopTpcd>
<pckUt/>
<rlbrCn/>
<shedSgn/>
</cargCsclPrgsInfoDtlQryVo>
<cargCsclPrgsInfoDtlQryVo>
<shedNm>(주)스카이국제운송</shedNm>
<prcsDttm>20211011000042</prcsDttm>
<dclrNo/>
<rlbrDttm/>
<wght>1172.2</wght>
<rlbrBssNo>주식회사 마스터해운항공</rlbrBssNo>
<bfhnGdncCn/>
<wghtUt>KG</wghtUt>
<pckGcnt>88</pckGcnt>
<cargTrcnRelaBsopTpcd>입항적하목록 심사완료</cargTrcnRelaBsopTpcd>
<pckUt>CT</pckUt>
<rlbrCn/>
<shedSgn>02006116</shedSgn>
</cargCsclPrgsInfoDtlQryVo>
<cargCsclPrgsInfoDtlQryVo>
<shedNm>(주)스카이국제운송</shedNm>
<prcsDttm>20211010224018</prcsDttm>
<dclrNo/>
<rlbrDttm/>
<wght>1172.2</wght>
<rlbrBssNo/>
<bfhnGdncCn/>
<wghtUt>KG</wghtUt>
<pckGcnt>88</pckGcnt>
<cargTrcnRelaBsopTpcd>입항적하목록 제출</cargTrcnRelaBsopTpcd>
<pckUt>CT</pckUt>
<rlbrCn/>
<shedSgn>02006116</shedSgn>
</cargCsclPrgsInfoDtlQryVo>
</cargCsclPrgsInfoQryRtnVo>''';

  test('코로나 전체 통계', () {
    final document = XmlDocument.parse(bookshelfXml);
    final items = document.findAllElements('item');
    var covid19Statics = <Covid19StatisticsModel>[];
    items.forEach((node) {
      covid19Statics.add(Covid19StatisticsModel.fromXml(node));
    });
    covid19Statics.forEach((covid19) {
      print('${covid19.stateDt} : ${covid19.decideCnt}');
    });
  });
}

class Covid19StatisticsModel {
  String? accDefRate;
  String? accExamCnt;
  String? accExamCompCnt;
  String? careCnt;
  String? clearCnt;
  String? createDt;
  String? deathCnt;
  String? decideCnt;
  String? examCnt;
  String? resutlNegCnt;
  String? seq;
  String? stateDt;
  String? stateTime;
  String? updateDt;
  Covid19StatisticsModel({
    this.accDefRate,
    this.accExamCnt,
    this.accExamCompCnt,
    this.careCnt,
    this.clearCnt,
    this.createDt,
    this.deathCnt,
    this.decideCnt,
    this.examCnt,
    this.resutlNegCnt,
    this.seq,
    this.stateDt,
    this.stateTime,
    this.updateDt,
  });

  factory Covid19StatisticsModel.fromXml(XmlElement xml) {
    return Covid19StatisticsModel(
      accDefRate: XmlUtils.searchResult(xml, 'accDefRate'),
      accExamCnt: XmlUtils.searchResult(xml, 'accDefRate'),
      accExamCompCnt: XmlUtils.searchResult(xml, 'accExamCompCnt'),
      careCnt: XmlUtils.searchResult(xml, 'careCnt'),
      clearCnt: XmlUtils.searchResult(xml, 'clearCnt'),
      createDt: XmlUtils.searchResult(xml, 'createDt'),
      deathCnt: XmlUtils.searchResult(xml, 'deathCnt'),
      decideCnt: XmlUtils.searchResult(xml, 'decideCnt'),
      examCnt: XmlUtils.searchResult(xml, 'examCnt'),
      resutlNegCnt: XmlUtils.searchResult(xml, 'resutlNegCnt'),
      seq: XmlUtils.searchResult(xml, 'seq'),
      stateDt: XmlUtils.searchResult(xml, 'stateDt'),
      stateTime: XmlUtils.searchResult(xml, 'stateTime'),
      updateDt: XmlUtils.searchResult(xml, 'updateDt'),
    );
  }
}

class XmlUtils {
  static String searchResult(XmlElement xml, String key) {
    return xml.findAllElements(key).map((e) => e.text).isEmpty
        ? ""
        : xml.findAllElements(key).map((e) => e.text).first;
  }
}


