import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppData with ChangeNotifier {

    bool readyConsoles = false;
    bool readyJocs = false;
    bool readyPersonatges = false;
    late dynamic dataConsoles;
    late dynamic dataJocs;
    late dynamic dataPersonatges;

    // Diu si les dades estàn llestes o no
    bool dataReady (String type) {
        switch (type) {
            case 'Consoles': return readyConsoles;
            case 'Jocs': return readyJocs;
            case 'Personatges': return readyPersonatges;
        }
        return false;
}
dynamic getData (String type) {
    switch (type) {
        case 'Consoles': return dataConsoles;
        case 'Jocs': return dataJocs;
        case 'Personatges': return dataPersonatges;
    }
    return;
}

}