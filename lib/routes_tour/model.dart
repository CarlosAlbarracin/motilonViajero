

class RutaTuristica {
  String videoUrl;
  final String titulo;
  String descripcion;
  List<String> pasos;
 

  RutaTuristica({
    required this.videoUrl,
    required this.titulo,
    required this.descripcion,
    required this.pasos,
    
  });
}
RutaTuristica miRuta = RutaTuristica(
  videoUrl: 'https://www.youtube.com/watch?v=zqZcf4_kSZY',
  titulo: 'Ruta del Durazno',
  descripcion: 'Partiendo de Pamplona, ciudad consentida por la neblina, se emprende esta fascinante travesía sintiendo la fresca brisa de los ríos Pamplonita y Chitagá hasta llegar a las gélidas montañas de Presidente. Oportunidad para contemplar la acolchada manta de tonos multicolores que ofrecen los cultivos de durazno y la feraz naturaleza. Región para extasiarse con admiración y afán por conocer su producción duraznera y la transformación que el cultivo ha aportado al bienestar de la provincia. Acompañados de las laboriosas manos de los campesinos productores de la fruta, hijos del sol radiante y compañeros del trinar de las aves, los viajeros conocerán todo acerca de su producción y beneficio. Las cantarinas aguas preceden el arribo a lugares colmados de paisajes inéditos: misteriosos páramos custodiados por las majestuosas espeletias en donde se encuentra las lagunas encantadas que paren los caudalosos ríos y quebradas que surcan la geografía nortesantandereana.',
  pasos: [
    'Paso 1: Laguna el Salado',
    'Paso 2: Cacota',
    'Paso 3: Pamplona',
   
  ],
    
);
