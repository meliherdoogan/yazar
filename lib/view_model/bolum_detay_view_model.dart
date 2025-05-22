import 'package:flutter/material.dart';
import 'package:yazar/model/bolum.dart';
import 'package:yazar/repository/database_repository.dart';
import 'package:yazar/tools/locator.dart';

class BolumDetayViewModel with ChangeNotifier {
  DatabaseRepository _databaseRepository = locator<DatabaseRepository>();

  final Bolum _bolum;

  Bolum get bolum => _bolum;

  BolumDetayViewModel(this._bolum);

  void icerigiKaydet(String icerik) async {
    _bolum.icerik = icerik;
    await _databaseRepository.updateBolum(_bolum);
  }
}
