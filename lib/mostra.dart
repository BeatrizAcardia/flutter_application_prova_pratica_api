// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_prova_pratica_api/animal.dart';
import 'package:flutter_application_prova_pratica_api/repository.dart';
import 'package:http/http.dart' as http;

class MostraPet extends StatefulWidget {
  const MostraPet({super.key});

  @override
  State<MostraPet> createState() => _MostraPetState();
}

class _MostraPetState extends State<MostraPet> {

  Animal pet = Animal();
  PetRepository petRepo = PetRepository();

  Future<void> fazerReq() async{
    var url = Uri.parse('http://localhost:8080/apiPET/todos');
    http.Response response = await http.get(url);
    if(response.statusCode == 200){
      List listaPet = jsonDecode(response.body) as List;
      petRepo.listaPet = listaPet.map(
        (listaPet) => Animal.fromJson(listaPet)).toList();
        setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    fazerReq();
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Lista dos pets bonitos ;p", style: TextStyle(color: Colors.white),), backgroundColor: Colors.pink[600],),
   
    body: ListView.builder(
      itemCount: petRepo.listaPet.length,
      itemBuilder: (context, index){   
        return ListTile(
          title: Text(petRepo.listaPet[index].nome.toString()),
          subtitle: Text(petRepo.listaPet[index].raca.toString()),
        );
      }
      ),
    );
  }
}