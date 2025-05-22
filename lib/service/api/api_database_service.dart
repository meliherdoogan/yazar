import 'package:yazar/model/bolum.dart';
import 'package:yazar/model/kitap.dart';
import 'package:yazar/service/base/database_service.dart';

class ApiDatabaseService implements DatabaseService {
  @override
  Future createBolum(Bolum bolum) async {
    return 1;
  }

  @override
  Future createKitap(Kitap kitap) async {
    return 1;
  }

  @override
  Future<int> deleteBolum(Bolum bolum) async {
    return 1;
  }

  @override
  Future<int> deleteKitap(Kitap kitap) async {
    return 1;
  }

  @override
  Future<int> deleteKitaplar(List kitapIdleri) async {
    return 1;
  }

  @override
  Future<List<Bolum>> readTumBolumler(kitapId) async {
    List<Bolum> bolumler = [];
    for(int i =1; i<=10;i++){
      Bolum bolum = Bolum(1, "Bolum $i");
      bolum.id = i;
      bolumler.add(bolum);
    }
    return bolumler;
  }

  @override
  Future<List<Kitap>> readTumKitaplar(int kategoriId, sonKitapId) async {
    List<Kitap> kitaplar = [];
    for(int i = 1; i<=10; i++){
      Kitap kitap = Kitap("Kitap $i", DateTime.now(), 0);
      kitap.id = i;
      kitaplar.add(kitap);
    }
    return kitaplar;
  }

  @override
  Future<int> updateBolum(Bolum bolum) async {
    return 1;
  }

  @override
  Future<int> updateKitap(Kitap kitap) async {
    return 1;
  }
}
