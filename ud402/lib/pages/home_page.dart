import 'package:flutter/material.dart';
import 'package:ud402/shared/pill-component.dart';

class HorizontalScrollList extends StatelessWidget {
  const HorizontalScrollList({super.key});

  @override
  Widget build(BuildContext context) {
    //aqui puedo crear variables como arrays,
    // en este ejecicio vi un tutorial donde
    //mostraban asi los datos y para hacerlo
    // bien ya que yo dividi el componente
    //pill-componente he vsto que puedo crear
    // un array con los datos y reccorrerlo (el array es json)

    //https://youtu.be/szT3TWxn2Cw?si=-GpxreSzkXEW_hhS

    final people = [
      {
        'image':
            'https://cinescopia.com/wp-content/uploads/2020/10/weaver_sigourney_025-scaled.jpg',
        'name': 'Sigourney',
        'surname': 'Weaver',
      },
      {
        'image':
            'https://e01-elmundo.uecdn.es/assets/multimedia/imagenes/2025/12/18/17660778159225.jpg',
        'name': 'Oona',
        'surname': 'Chaplin',
      },
      {
        'image':
            'https://hips.hearstapps.com/hmg-prod/images/zoe-saldana-actriz-avatar-fuego-y-ceniza-pelicula-posado-retrato-6943f5547ad9d.jpg?crop=1xw:0.749756176853056xh;0.00489xw,0',
        'name': 'Zoe',
        'surname': 'Saldaña',
      },
      {
        'image':
            'https://images.mubicdn.net/images/cast_member/11828/cache-59324-1698259672/image-w856.jpg',
        'name': 'Sam',
        'surname': 'Worthington',
      },
    ];

    return SizedBox(
      height: 700,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: people.length,
        itemBuilder: (context, index) {
          final person = people[index];
          return PillForScroll(
            imageUrl: person['image']!,
            name: person['name']!,
            surname: person['surname']!,
          );
        },
      ),
    );
  }
}
