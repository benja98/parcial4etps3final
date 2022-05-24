import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

//
void main() {
  runApp(Parcialmaps());
}

final MarkerId ca = MarkerId("Calle Arce");
final MarkerId sal = MarkerId("Salvador del Mundo");
final MarkerId soya = MarkerId("Soyapango");
final MarkerId sj = MarkerId("San Jacinto");

class Parcialmaps extends StatefulWidget {
  Parcialmaps({Key? key}) : super(key: key);

  @override
  State<Parcialmaps> createState() => _ParcialmapsState();
}

final Marker callearce = Marker(
    markerId: ca,
    position: LatLng(13.699959641784439, -89.2004262881819),
    infoWindow: InfoWindow(title: "MovilSV - Calle Arce"));
final Marker Salvadormundo = Marker(
    markerId: sal,
    position: LatLng(13.701282194100951, -89.2243968353751),
    infoWindow: InfoWindow(title: "MovilSV -  El Salvador del Mundo"));

final Marker soyapango = Marker(
    markerId: soya,
    position: LatLng(13.709647795521931, -89.13746000673781),
    infoWindow: InfoWindow(title: "MovilSV - Centro de Soyapango"));

final Marker sanjacinto = Marker(
    markerId: sj,
    position: LatLng(13.687384923915259, -89.18995489536616),
    infoWindow: InfoWindow(title: "MovilSV - San Jacinto"));

final baseSet = <Marker>{callearce, Salvadormundo, soyapango, sanjacinto};
final CameraPosition _pocisition = CameraPosition(
    target: LatLng(13.696212653903794, -89.1984087293541), zoom: 10);

class _ParcialmapsState extends State<Parcialmaps> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Parcial4 Benjamin, Joel"),
        ),
        body: Container(
          width: 500,
          height: 500,
          child: Container(
              child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 500,
                  width: 500,
                  child: GoogleMap(
                    initialCameraPosition: _pocisition,
                    compassEnabled: true,
                    myLocationButtonEnabled: true,
                    onMapCreated: (GoogleMapController controller) {},
                    markers: Set<Marker>.of(baseSet),
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
