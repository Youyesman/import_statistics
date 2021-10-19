import 'package:covid_statistics/src/utils/xml_utils.dart';
import 'package:xml/xml.dart';

class ImportStatisticsModel {
  String? prgsStts;
  String? mblNo;
  String? hblNo;
  String? pckGcnt;
  String? pckUt;
  String? msrm;
  String? prnm;
  String? csclPrgsStts;

  ImportStatisticsModel({

    this. prgsStts,
    this. mblNo,
    this. hblNo,
    this. pckGcnt,
    this. pckUt,
    this. msrm,
    this. prnm,
    this. csclPrgsStts,

  });

  factory ImportStatisticsModel.fromXml(XmlElement xml) {
    return ImportStatisticsModel(

     prgsStts : XmlUtils.searchResult(xml, 'prgsStts'),
     mblNo : XmlUtils.searchResult(xml, 'mblNo'),
     hblNo : XmlUtils.searchResult(xml, 'hblNo'),
     pckGcnt : XmlUtils.searchResult(xml, 'pckGcnt'),
     pckUt : XmlUtils.searchResult(xml, 'pckUt'),
     msrm : XmlUtils.searchResult(xml, 'msrm'),
     prnm : XmlUtils.searchResult(xml, 'prnm'),
     csclPrgsStts : XmlUtils.searchResult(xml, 'csclPrgsStts'),

    );
  }
}
