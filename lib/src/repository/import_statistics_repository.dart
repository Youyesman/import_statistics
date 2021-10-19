import 'package:covid_statistics/src/model/import_statistics.dart';
import 'package:dio/dio.dart';
import 'package:xml/xml.dart';



class ImportStatisticsRepository {

  late var _dio;
  ImportStatisticsRepository() {
    _dio = Dio(
      BaseOptions(
        baseUrl: "https://unipass.customs.go.kr:38010/ext/rest/cargCsclPrgsInfoQry/retrieveCargCsclPrgsInfo?crkyCn=s200v271w100q115q010v000q0",
        queryParameters: {'ServiceKey': 's200v271w100q115q010v000q0'},
      ),
    );
  }

  Future<ImportStatisticsModel> fetchImportStatistics() async {
    var response =
        await _dio.get('&hblNo=UCSS4360&blYy=2021');
    final document = XmlDocument.parse(response.data);
    final results = document.findAllElements('cargCsclPrgsInfoQryVo');
    if (results.isNotEmpty) {
      return ImportStatisticsModel.fromXml(results.first);
    } else {
      return Future.value(null);
    }
  }
}
