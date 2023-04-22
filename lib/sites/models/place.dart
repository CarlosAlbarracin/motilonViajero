class TravelPlace {
  TravelPlace({
    required this.name,
    required this.user,
    required this.imagesUrl,
    this.id = '',
    this.description = '',
    this.locationDesc = '',
    this.statusTag = StatusTag.popular,
    this.shared = 0,
    this.likes = 0,
  });

  final String id;
  final String name;
  final TravelUser user;
  final StatusTag statusTag;
  final int shared;
  final int likes;
  final String locationDesc;
  final String description;
  final List<String> imagesUrl;

  static final places = [
    TravelPlace(
      id: '1',
      name: 'Chinacota',
      likes: 500,
      shared: 240,
      description:
          'Pueblo con hermosos paisajes montañosos y arquitectura colonial,'
          ' playas de arena blanca, sitios arqueológicos, parques '
          'naturales y actividades acuáticas únicas',
      imagesUrl: [
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/08/e3/1e/21/hotel-y-centro-de-convenciones.jpg?w=500&h=300&s=1',
        'https://visitcucuta.com/wp-content/uploads/2020/11/TOUR-CHINACOTA-3.jpg',
        'https://turismoi.co/uploads/co/photo/photo_file/14491/IMG_20201015_154518.jpg'
      ],
      user: TravelUser.alex,
      locationDesc: 'QUINTANA ROO Mexico, Coast of the Caribbean Sea',
    ),
    TravelPlace(
      id: '2',
      name: 'Pamplona',
      likes: 140,
      shared: 49,
      description:
          'Tulum fue una ciudad amurallada de la cultura maya ubicada en el '
          'Estado de Quintana Roo, en el sureste de México, en la costa'
          ' del mar Caribe.',
      imagesUrl: [
        'https://turismonortedesantander.com/wp-content/uploads/Pamplona_norte-de-santander.jpg',
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/f0/c3/ba/cariongo-plaza-hotel.jpg?w=600&h=400&s=1',
        'https://www.pamplona-nortedesantander.gov.co/MiMunicipio/PublishingImages/Paginas/Sitios-de-Interes-/CASA-AGUEDA-GALLARDO-PAMPLONA.png'
      ],
      statusTag: StatusTag.event,
      user: TravelUser.mario,
      locationDesc: 'QUINTANA ROO Mexico, in southeastern Mexico',
    ),
    TravelPlace(
      id: '3',
      likes: 29,
      shared: 40,
      name: 'ocaña',
      description:
          '''Ometepec (en náhuatl: ome, tepetl, 'dos, cerros''lugar entre dos cerros') es un poblado y cabecera del municipio homónimo en el estado mexicano de Guerrero.''',
      imagesUrl: [
        'https://ocanansantander.files.wordpress.com/2011/10/rosangela-castro.jpg',
        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Oca%C3%B1a_-_panoramio_%281%29.jpg/600px-Oca%C3%B1a_-_panoramio_%281%29.jpg',
        'https://radionacional-v3.s3.amazonaws.com/s3fs-public/styles/portadas_relaciona_4_3/public/node/article/field_image/whatsapp_image_2019-11-29_at_3.23.28_pm.jpeg?h=7b436a88&itok=THRV4iyb'
      ],
      statusTag: StatusTag.event,
      user: TravelUser.luna,
      locationDesc: 'GUERRERO MEXICO Ometepec City',
    ),
    TravelPlace(
      id: '4',
      name: 'Cucuta',
      shared: 500,
      likes: 39,
      description:
          'Acapulco se encuentra a la altura de los mejores resorts del'
          ' mundo. Representa las vacaciones ideales para cualquier '
          'exigencia',
      imagesUrl: [
        'https://turismonortedesantander.com/wp-content/uploads/Loma-de-Bolivar.jpg',
        'https://i0.wp.com/visitcucuta.com/wp-content/uploads/2020/03/CERRO-JESUS-NAZARENO-2.jpg?resize=768%2C563&ssl=1',
        'https://cloudfront-us-east-1.images.arcpublishing.com/semana/M3UIM2P4HZCNVIWQFLTBF5BPLA.jpg'
      ],
      statusTag: StatusTag.event,
      user: TravelUser.lili,
      locationDesc: 'GUERRERO MEXICO ON THE SOUTHERN COAST OF THE COUNTRY',
    ),
    TravelPlace(
      id: '5',
      name: 'Cacota',
      likes: 140,
      shared: 49,
      description:
          'Tulum fue una ciudad amurallada de la cultura maya ubicada en el '
          'Estado de Quintana Roo, en el sureste de México, en la costa'
          ' del mar Caribe.',
      imagesUrl: [
        'https://vamosllegando.com/wp-content/uploads/2022/07/cacota-norte-de-santander-como-llegar-desde-cucuta-desde-pamplona.jpg',
        'https://i0.wp.com/tintatic.com/wp-content/uploads/2022/03/20220329_Cacota-parque-principal-e-iglesia_4280-scaled.jpg?fit=1280%2C960&ssl=1',
        'https://visitcucuta.com/wp-content/uploads/2020/01/Tour-Cacota-Norte-de-Santander-turismo-2022-2023-2024-5-e1648091564569.jpg'
      ],
      statusTag: StatusTag.event,
      user: TravelUser.mario,
      locationDesc: 'QUINTANA ROO Mexico, in southeastern Mexico',
    ),
    TravelPlace(
      id: '6',
      name: 'Bochalema',
      likes: 140,
      shared: 49,
      description:
          'Tulum fue una ciudad amurallada de la cultura maya ubicada en el '
          'Estado de Quintana Roo, en el sureste de México, en la costa'
          ' del mar Caribe.',
      imagesUrl: [
        'https://visitcucuta.com/wp-content/uploads/2020/03/DESTINO-TURISTICO-BOCHALEMA-5.jpg',
        'https://cloudfront-us-east-1.images.arcpublishing.com/prisaradioco/KJJ33Z72KNKHXBTYFO53HEN3PM.jpg',
        'https://colombiaextraordinaria.com/somos_colombia/external/img/img_departamentos/Bochalemaimagen_ce.jpg'
      ],
      statusTag: StatusTag.event,
      user: TravelUser.mario,
      locationDesc: 'QUINTANA ROO Mexico, in southeastern Mexico',
    ),
    TravelPlace(
      id: '7',
      name: 'Villa del Rosario',
      likes: 140,
      shared: 49,
      description:
          'Tulum fue una ciudad amurallada de la cultura maya ubicada en el '
          'Estado de Quintana Roo, en el sureste de México, en la costa'
          ' del mar Caribe.',
      imagesUrl: [
        'https://turismonortedesantander.com/wp-content/uploads/Templo_Historico_Cucuta.jpg',
        'https://cdn.municipios.com.co/fotos/849-2017-09-15-20-59-636-L.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIEVn2NbQs867Z069m608Qow_2ytIhJdlfng&usqp=CAU'
      ],
      statusTag: StatusTag.event,
      user: TravelUser.mario,
      locationDesc: 'QUINTANA ROO Mexico, in southeastern Mexico',
    ),
    TravelPlace(
      id: '8',
      name: 'Salazar',
      likes: 140,
      shared: 49,
      description:
          'Tulum fue una ciudad amurallada de la cultura maya ubicada en el '
          'Estado de Quintana Roo, en el sureste de México, en la costa'
          ' del mar Caribe.',
      imagesUrl: [
        'https://visitcucuta.com/wp-content/uploads/2022/06/IMAGENES-SALAZAR-DE-LAS-PALMAS-NORTE-DE-SANTANDER-DERECHOS-DE-AUTOR-FABIAN-ROMERO-COLOMBIA-13-820x615.jpg.webp',
        'https://i0.wp.com/visitcucuta.com/wp-content/uploads/2022/06/IMAGENES-SALAZAR-DE-LAS-PALMAS-NORTE-DE-SANTANDER-DERECHOS-DE-AUTOR-FABIAN-ROMERO-COLOMBIA-11.jpg?resize=820%2C615&ssl=1',
        'https://www.pamplona-nortedesantander.gov.co/MiMunicipio/PublishingImages/Paginas/Sitios-de-Interes-/CASA-AGUEDA-GALLARDO-PAMPLONA.png'
      ],
      statusTag: StatusTag.event,
      user: TravelUser.mario,
      locationDesc: 'QUINTANA ROO Mexico, in southeastern Mexico',
    ),
    TravelPlace(
      id: '9',
      name: 'Durania',
      likes: 140,
      shared: 49,
      description:
          'Tulum fue una ciudad amurallada de la cultura maya ubicada en el '
          'Estado de Quintana Roo, en el sureste de México, en la costa'
          ' del mar Caribe.',
      imagesUrl: [
        'https://turismonortedesantander.com/wp-content/uploads/Leon_estatua_durania.jpg',
        'https://turismonortedesantander.com/wp-content/uploads/Durania_norte-de-santander.jpg',
        'https://turismonortedesantander.com/wp-content/uploads/Piscina_Durania_norte-de-santander.jpg'
      ],
      statusTag: StatusTag.event,
      user: TravelUser.mario,
      locationDesc: 'QUINTANA ROO Mexico, in southeastern Mexico',
    ),
    TravelPlace(
      id: '10',
      name: 'Labateca',
      likes: 14,
      shared: 49,
      description:
          'Labateca es un municipio ubicado en la región sur de Norte de Santandera  tiene  '
          'el privilegio de poseer caídas de agua de aproximadamente 100 metros de altura,'
          'senderos naturales y fincas dedicadas al cultivo de café orgánico tipo exportación.',
      imagesUrl: [
        'https://visitcucuta.com/wp-content/uploads/2020/01/Cascada-de-Lirgua-1-820x615.jpg.webp',
        'https://visitcucuta.com/wp-content/uploads/2020/01/Municipio-de-Labateca-4-820x615.jpg.webp',
        'https://www.viajarenverano.com/wp-content/uploads/2019/02/Labateca-Plaza.jpg'
      ],
      statusTag: StatusTag.event,
      user: TravelUser.mario,
      locationDesc: 'QUINTANA ROO Mexico, in southeastern Mexico',
    ),
  ];
  static final collectionPlaces = [
    TravelPlace(
      name: 'San Miguel de Allende',
      imagesUrl: [
        'https://images.unsplash.com/photo-1518105779142-d975f22f1b0a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=60'
      ],
      user: TravelUser.mario,
    ),
    TravelPlace(
      name: 'Chichen Itza',
      imagesUrl: [
        'https://images.unsplash.com/photo-1518638150340-f706e86654de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=867&q=60'
      ],
      user: TravelUser.mario,
    ),
    TravelPlace(
      name: 'Ciudad de Mexico',
      imagesUrl: [
        'https://images.unsplash.com/photo-1574493264149-87880133a2ba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=874&q=60'
      ],
      user: TravelUser.mario,
    ),
    TravelPlace(
      name: 'Teotihuacan',
      imagesUrl: [
        'https://images.unsplash.com/photo-1575351881847-b3bf188d9d0a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=60'
      ],
      user: TravelUser.mario,
    ),
    TravelPlace(
      name: 'Taxco',
      imagesUrl: [
        'https://images.unsplash.com/photo-1595781514079-2abd0a36f892?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=60'
      ],
      user: TravelUser.mario,
    ),
    TravelPlace(
      name: 'Acapulco',
      imagesUrl: [
        'https://images.unsplash.com/photo-1624979575293-10e2113ed91d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=60'
      ],
      user: TravelUser.luna,
    ),
  ];
}

class TravelUser {
  TravelUser(this.name, this.urlPhoto);

  final String name;
  final String urlPhoto;

  static TravelUser lili = TravelUser('Descripcion',
      'https://images.unsplash.com/photo-1457732815361-daa98277e9c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=60',);
  static TravelUser alex = TravelUser('Alex Fernandez',
      'https://images.unsplash.com/photo-1589304038421-449708a42983?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',);
  static TravelUser mario =
      TravelUser('Mario Calzada', 'https://i.ibb.co/c1j1VDT/yo.jpg');
  static TravelUser luna = TravelUser('Luna Benioly',
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=334&q=80',);
  static TravelUser javier = TravelUser('Javier',
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=334&q=80',);

  static List<TravelUser> users = [alex, mario, luna, lili, javier];
}

enum StatusTag { popular, event }
