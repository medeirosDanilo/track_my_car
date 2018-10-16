import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:track_my_car/scoped_models/vehicles.dart';


import './pages/home.dart';

import './pages/vehicles/vehicles.dart';
import './pages/vehicles/vehicle_form.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<VehicleModel>(
        model: VehicleModel(),
        child: MaterialApp(
            title: 'Track my Car',
            theme: new ThemeData(
                primaryColor: Colors.indigo, accentColor: Colors.indigoAccent),
            routes: {
              '/': (BuildContext context) => VehiclesPage(),
              '/vehicles': (BuildContext context) => VehiclesPage(),
              '/vehicles/new': (BuildContext context) => VehicleFormPage()
            }));
  }
}
