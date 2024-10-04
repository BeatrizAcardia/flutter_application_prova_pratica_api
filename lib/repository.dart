import 'package:flutter_application_prova_pratica_api/animal.dart';


class PetRepository{
  List<Animal> _listaPet = [];

  PetRepository();
  
  get listaPet => this._listaPet;

  set listaPet(value) => this._listaPet;

}