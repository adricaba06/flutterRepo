import 'dart:convert';

/// Modelo principal de la respuesta del dataset
class ParkingListResponse {
  final int totalCount;
  final List<Aparcamiento> results;

  ParkingListResponse({
    required this.totalCount,
    required this.results,
  });

  /// Constructor factory que recibe el JSON como String
  factory ParkingListResponse.fromJson(String jsonString) {
    final Map<String, dynamic> jsonMap = jsonDecode(jsonString);

    return ParkingListResponse(
      totalCount: jsonMap['total_count'],
      results: (jsonMap['results'] as List)
          .map((e) => Aparcamiento.fromJson(e))
          .toList(),
    );
  }
}

/// Modelo de cada aparcamiento individual
class Aparcamiento {
  final String tipo;
  final int objectid;
  final int numplazas;
  final GeoShape geoShape;
  final GeoPoint2D geoPoint2D;

  Aparcamiento({
    required this.tipo,
    required this.objectid,
    required this.numplazas,
    required this.geoShape,
    required this.geoPoint2D,
  });

  factory Aparcamiento.fromJson(Map<String, dynamic> json) {
    return Aparcamiento(
      tipo: json['tipo'],
      objectid: json['objectid'],
      numplazas: json['numplazas'],
      geoShape: GeoShape.fromJson(json['geo_shape']),
      geoPoint2D: GeoPoint2D.fromJson(json['geo_point_2d']),
    );
  }
}

/// Modelo de la geometría y tipo de Feature
class GeoShape {
  final String type;
  final Geometry geometry;

  GeoShape({
    required this.type,
    required this.geometry,
  });

  factory GeoShape.fromJson(Map<String, dynamic> json) {
    return GeoShape(
      type: json['type'],
      geometry: Geometry.fromJson(json['geometry']),
    );
  }
}

/// Coordenadas del punto
class Geometry {
  final String type;
  final List<double> coordinates;

  Geometry({
    required this.type,
    required this.coordinates,
  });

  factory Geometry.fromJson(Map<String, dynamic> json) {
    return Geometry(
      type: json['type'],
      coordinates: List<double>.from(
        json['coordinates'].map((e) => e.toDouble()),
      ),
    );
  }
}

/// Modelo de geo_point_2d
class GeoPoint2D {
  final double lat;
  final double lon;

  GeoPoint2D({
    required this.lat,
    required this.lon,
  });

  factory GeoPoint2D.fromJson(Map<String, dynamic> json) {
    return GeoPoint2D(
      lat: json['lat'].toDouble(),
      lon: json['lon'].toDouble(),
    );
  }
}
