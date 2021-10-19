import 'package:covid_statistics/src/controller/import_statistics_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends GetView<ImportStatisticsController> {
  App({Key? key}) : super(key: key);
TextEditingController _editingController = TextEditingController();

  Widget infoWidget(String title, String value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Text(
            " : $value",
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _editingController,
          style: TextStyle(color: Colors.white),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(hintText: 'BL넘버를 입력하세요'),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Obx(() {
          var info = controller.importStatistic.value;
          return Column(
            children: [
              infoWidget("진행상태", info.prgsStts ?? ''),
              infoWidget("MBL No.", info.mblNo ?? ''),
              infoWidget("HBL No.", info.hblNo ?? ''),
              infoWidget("포장개수", info.pckGcnt ?? ''),
              infoWidget("포장단위", info.pckUt ?? ''),
              infoWidget("용적", info.msrm ?? ''),
              infoWidget("품명", info.prnm ?? ''),
              infoWidget("통관진행상태", info.csclPrgsStts ?? ''),
            ],
          );
        }),
      ),
    );
  }
}

