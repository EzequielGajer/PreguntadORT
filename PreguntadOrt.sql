USE [PreguntadOrt]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 31/8/2023 15:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](1000) NOT NULL,
	[Foto] [varchar](1000) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dificultades]    Script Date: 31/8/2023 15:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dificultades](
	[IdDificultad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](1000) NOT NULL,
 CONSTRAINT [PK_Dificultades] PRIMARY KEY CLUSTERED 
(
	[IdDificultad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preguntas]    Script Date: 31/8/2023 15:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas](
	[IdPregunta] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
	[IdDificultad] [int] NOT NULL,
	[Enunciado] [text] NOT NULL,
	[Foto] [varchar](1000) NULL,
 CONSTRAINT [PK_Preguntas] PRIMARY KEY CLUSTERED 
(
	[IdPregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puntajes]    Script Date: 31/8/2023 15:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puntajes](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](1000) NOT NULL,
	[Puntos] [int] NOT NULL,
	[FechaHora] [datetime] NULL,
 CONSTRAINT [PK_Puntajes] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Respuestas]    Script Date: 31/8/2023 15:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Respuestas](
	[IdRespuesta] [int] IDENTITY(1,1) NOT NULL,
	[IdPregunta] [int] NOT NULL,
	[Opcion] [int] NOT NULL,
	[Contenido] [varchar](1000) NOT NULL,
	[Correcta] [bit] NOT NULL,
	[Foto] [varchar](1000) NULL,
	[ContadorSeleccionada] [int] NULL,
	[Puntos] [int] NULL,
	[IdDificultad] [int] NULL,
 CONSTRAINT [PK_Respuestas] PRIMARY KEY CLUSTERED 
(
	[IdRespuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (1, N'Deportes', N'https://e7.pngegg.com/pngimages/814/807/png-clipart-olympic-games-2014-winter-olympics-1972-summer-olympics-2012-summer-olympics-sochi-olimpic-text-trademark.png')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (2, N'Historia', N'https://w1.pngwing.com/pngs/809/232/png-transparent-book-black-and-white-book-discussion-club-logo-author-guided-reading-too-close-to-breathe-a-novel-coming-forth-of-the-book-of-mormon-publishing.png')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (3, N'Quimica', N'https://e7.pngegg.com/pngimages/691/826/png-clipart-computer-icons-chemistry-encapsulated-postscript-chemical-reaction-laboratory-chemistry.png')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (4, N'Musica', N'https://w7.pngwing.com/pngs/427/66/png-transparent-music-internet-radio-musician-google-play-music-radio-electronics-logo-audio-equipment.png')
INSERT [dbo].[Categorias] ([IdCategoria], [Nombre], [Foto]) VALUES (5, N'Geografia', N'https://w7.pngwing.com/pngs/285/815/png-transparent-computer-icons-geography-map-logo-silhouette-map.png')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Dificultades] ON 

INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (1, N'Baja')
INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (2, N'Media')
INSERT [dbo].[Dificultades] ([IdDificultad], [Nombre]) VALUES (3, N'Alta')
SET IDENTITY_INSERT [dbo].[Dificultades] OFF
GO
SET IDENTITY_INSERT [dbo].[Preguntas] ON 

INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, 1, N'¿Cual es el nombre completo de este futbolista?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1MUUGqmw7bMaxkdRrBihSDqlpgSW742qm0qh9taOtCykhbj-wAu-rEoxUrLJXw3hS1xI&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 4, 1, N'¿Como se llama el artista de la imagen?', N'https://img.redbull.com/images/c_fill,g_auto,w_450,h_600/q_auto:low,f_auto/redbullcom/2019/08/28/acfbbb06-942a-437c-9f57-c573f1b06bfd/wos')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, 2, N'¿Como se llamaba lo que hoy en dia es el Mundial de Clubes?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIjpvKsZcvKEVz9oTAo73GJmFWttZSIghFUI6gLHOA1KgRUc9_nFxUqXzVPhVEezJXzD4&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 1, 2, N'¿Cuantas copas del mundo tiene la seleccion Inglesa?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRY6ijYJZJukR0hGb5XygY0BKnSqjqEQftpJBWuLkqKNIZQfL1ZG_aN0O0gEWKnKBThsM&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 1, 3, N'¿Cuantas copas libertadores tiene Olimpia de Paraguay?', N'https://cdn1.hendyla.com/archivos/imagenes/2015/07/28/publicacion-grupo-1503112696631497_1726235697652528-2-c4fbb54e4ebdcfd2c2cca5e9822673f6-830_A.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, 3, N'¿En que año el Nottingham Forest conquistó sus 2 Champions League?', N'https://3.bp.blogspot.com/-8qiWnykcqzM/XKVbuImwB1I/AAAAAAABUzk/IzWGeygXffIxW3yoF5oFoGkVJOW_GtyVgCLcBGAs/s1600/Nottingham%2BForest%2BFC.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (7, 2, 1, N'¿Quien creó la bandera Argentina?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE_qRdR7BygsHVR2Y0exxiZz3j7G5flJvIo07MkJbZNdzcGax1PYeTJMQH7IsAHBGRZJk&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (8, 2, 1, N'¿En que año Cristobal Colón llegó a América?', N'https://www.sae-apoyoconsultoria.com/wp-content/uploads/2019/10/latam.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (9, 2, 2, N'¿En que año terminó la década infame?', N'https://i.blogs.es/f3b659/simios-4/450_1000.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (10, 2, 2, N'¿Quienes formaban la famosa "Triple Alianza"?', N'https://us.123rf.com/450wm/bulega/bulega1706/bulega170600007/80106789-vector-em-branco-escuro-cinzento-preto-mapa-similar-do-mundo-isolado-no-fundo-branco-monocrom%C3%A1tico.jpg?ver=6')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (11, 2, 3, N'¿Como se llamaba el ministro de propaganda aleman en el periodo entreguerras?', N'https://us.123rf.com/450wm/zeferli/zeferli1903/zeferli190300704/119731550-concepto-de-guerra-escena-de-combate-de-siluetas-militares-en-el-fondo-del-cielo-de-niebla-de.jpg?ver=6')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (12, 2, 3, N'¿Que idioma hablaban los aztecas?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-wYzLSAO7UvJTIAESbcb79ECPQvnH6Fd-sldiTLJeeRwPQ0OUfkXtqLHcmA7jXkW_ync&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (13, 3, 1, N'¿Cuanto es 99 + 11?', N'https://us.123rf.com/450wm/intararit/intararit2206/intararit220600010/189191549-f%C3%B3rmula-matem%C3%A1tica-para-encontrar-un-di%C3%A1metro-sin-costuras-en-un-tablero.jpg?ver=6')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (14, 3, 2, N'¿Cual es la raíz cúbica de 125?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcgTGJy-_3Lz6WFDCLaephaXb6ghJmqp6xD1ZmFvk8i2wbgA-mxBS4f_Jmu9r97vDz2D4&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (15, 3, 3, N'¿Que significa LI en la tabla periodica?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjTZ3R9FpCsxBff9-5AGAMwPV4sir_8Ha3_7bXH4JSOalUaKVHl9ra8FwfANstfuHKuZw&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (16, 3, 3, N'¿Qué es la materia?', N'https://us.123rf.com/450wm/surfupvector/surfupvector2212/surfupvector221200729/195496748-glass-flasks-for-chemical-experiments-vector-illustrations-set-collection-of-cartoon-drawings-of.jpg?ver=6')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (17, 3, 1, N'9 * x = 108.  ¿Que numero es X?', N'https://us.123rf.com/450wm/intararit/intararit1604/intararit160400002/54579248-pizarra-con-matem%C3%A1ticas-y-ciencia-escribiendo-en-la-pizarra.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (18, 3, 2, N'Cuáles son los estados de la materia?
', N'https://us.123rf.com/450wm/freeprod/freeprod1608/freeprod160800192/64851432-qu%C3%ADmica-ciencia-laboratorio-probeta-equipo-de-laboratorio.jpg?ver=6')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (19, 1, 1, N'¿En cual de estos clubes NO jugó Cristiano Ronaldo?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHAmT0qw4g44w4I6UI_C0GJ-sRF3iIsOWH7OubM-Ixhd4Tg_D2Fpbq_p9HhvUxnToH5M8&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (20, 4, 2, N'¿Cual de estas canciones pertenece a Soda Stereo?', N'https://us.123rf.com/450wm/sergeypykhonin/sergeypykhonin1709/sergeypykhonin170900040/85856869-letras-de-la-m%C3%BAsica-rock-guitarra-instrumento-de-cuerda-musical-s%C3%ADmbolo-ilustraci%C3%B3n-vectorial.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (22, 4, 3, N'¿Qué estrella de los 80 es reconocida por Guinness World Records como la artista femenina más vendida de todos los tiempos?', N'https://l450v.alamy.com/450ves/2naprg4/ecualizador-digital-o-simbolo-de-ecualizador-pulse-musical-mezclador-de-ondas-de-sonido-musical-diagrama-de-ondas-sonoras-de-musica-nivel-de-volumen-frecuencia-de-audio-musical-linea-de-voz-2naprg4.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (23, 4, 1, N'El famoso musico Andres Calamaro formaba parte del grupo Soda Stereo', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-6EkWb2zgqGgRjyng-y_OSvTR_NXAYK23h6u0KjNlCly7hCS27FCmlla3YlYY-2xyIQU&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (24, 4, 2, N'¿Quién ganó un Grammy al mejor álbum de reggae en 1995 con Boombastic?', N'https://us.123rf.com/450wm/shpak/shpak2003/shpak200300007/141330194-notas-musicales-y-clave-de-sol-en-el-pentagrama-de-m%C3%BAsica-%C3%B0-%C2%B0-elemento-decorativo-para-su.jpg?ver=6')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (25, 4, 3, N'Michael Jackson debutó con su característico paseo lunar, ¿durante qué canción en 1983?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGe3448AoDOvzPu083iiuaa4vW4enNKQnt5Q&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (26, 5, 1, N'¿En que continente está Venezuela?', N'https://us.123rf.com/450wm/vankok/vankok2201/vankok220100066/179920970-vista-panor%C3%A1mica-de-las-monta%C3%B1as-y-ca%C3%B1ones-del-parque-nacional-canaima-en-venezuela.jpg?ver=6')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (28, 5, 1, N'¿En que continente está San Marino?', N'https://us.123rf.com/450wm/jojjik/jojjik1502/jojjik150200024/36174147-colorido-vista-de-un-pueblo-t%C3%ADpico-italiano-en-las-monta%C3%B1as-limonta-pueblo-italiano-en-el-lago-de.jpg?ver=6')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (30, 5, 2, N'¿Cual es la capital de Brasil?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoIUIoxy7JUEZRfXp2P1etFOnvqbhN9AYKfcq_eDp2BChA2sl5phMxabwMo6bQHnKkNiI&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (31, 5, 2, N'¿Cual es la capital de Estados Unidos?', N'https://us.123rf.com/450wm/jovannig/jovannig1802/jovannig180200357/95589608-ondeando-la-bandera-americana-contra-el-sol-y-los-rascacielos-de-la-ciudad.jpg?ver=6')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (32, 5, 3, N'¿Donde está Sri Lanka?', N'https://i0.wp.com/casalwanderlust.com.br/wp-content/uploads/2018/11/praias-do-sri-lanka-450x230.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (33, 5, 3, N'¿Quién le vendió Alaska a Estados Unidos?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJk3rTuwntQTj-68XTLd8FbVsWcNsrC9_sNlsg0RK3bYVfLz-_dW9HulzUabHzvP9-HdU&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (34, 1, 1, N'¿Cuantos mundiales tiene Argentina?', N'https://www.continentalcorrientes.com/multimedia/imagenes/fotos/2022-12-13/282333_crop.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (35, 1, 1, N'¿Cuantas eurocopas tiene España?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6ULurMVFNAqONJf2M8k7Qz29-jtG_EicPMQwWlgllgYkznw_FXIc_57Jzyb6dXmipCAE&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (36, 1, 2, N'¿Cuantas copas americas tiene Brasil?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbjzYwJuzGtDolAokdBwRvblUX2rGVDMnIBq-1o1tnndmklRdIMzx2zUpB8OP29UCSskw&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (37, 1, 2, N'¿Cuantas copas americas tiene Colombia?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbjzYwJuzGtDolAokdBwRvblUX2rGVDMnIBq-1o1tnndmklRdIMzx2zUpB8OP29UCSskw&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (38, 1, 3, N'¿Como se llama el Numero 8 de River?', N'https://www.continentalcorrientes.com/multimedia/imagenes/fotos/2023-07-16/971258_crop.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (39, 1, 3, N'¿Cuantos descensos hay este año en la liga argentina?', N'https://www.continentalcorrientes.com/multimedia/imagenes/fotos/2023-08-19/108185_crop.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (45, 2, 1, N'¿Como se llamaba el anterior presidente de Argentina que gobernó desde 2015 hasta 2019?', N'https://diariolavoz.net/wp-content/uploads/2015/11/Macri.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (47, 2, 1, N'¿En que año termino la segunda guerra mundial?', N'https://uboat.net/media/allies/warships/sj/cl_kavkaz.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (48, 2, 2, N'¿Cuantos integrantes tenia la Primera Junta?', N'https://www.alma-viajera.com/AGimg/iruya45.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (50, 2, 2, N'¿Cuando se inauguró la ley Saenz Peña?', N'https://us.123rf.com/450wm/janpietruszk/janpietruszk2105/janpietruszk210500399/169080937-mallet-ley-c%C3%B3digo-legal-y-concepto-de-escalas-de-justicia.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (51, 2, 3, N'¿Quien fue el presidente mas joven de la historia Argentina?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm-NTtGv2B3Z-XNwpcrUMrlAYBWXRKit92Li9JCRC9oVCBqvFRRASrAhmTx-jL6KrwkrA&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (52, 2, 3, N'¿Cual era la diferencia de edad entre San Martin y Remedios de Escalada?', N'https://www.continentalcorrientes.com/multimedia/imagenes/fotos/2021-05-24/354573_crop.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (53, 3, 1, N'¿Cuanto es 7 * 8 ?', N'https://us.123rf.com/450wm/intararit/intararit1604/intararit160400002/54579248-pizarra-con-matem%C3%A1ticas-y-ciencia-escribiendo-en-la-pizarra.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (54, 3, 1, N'¿Cuanto es 125 / 5 ?', N'https://us.123rf.com/450wm/intararit/intararit1604/intararit160400002/54579248-pizarra-con-matem%C3%A1ticas-y-ciencia-escribiendo-en-la-pizarra.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (56, 3, 2, N'¿Que significa la formula H2O?', N'https://us.123rf.com/450wm/freeprod/freeprod1608/freeprod160800192/64851432-qu%C3%ADmica-ciencia-laboratorio-probeta-equipo-de-laboratorio.jpg?ver=6')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (57, 3, 2, N'¿Cual es la carga del electron?', N'https://homework.study.com/cimages/multimages/16/zx2962731030196624505.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (58, 3, 3, N'¿Como se llama el cambio de estado de gaseoso a solido, SIN PASAR por liquido?', N'https://us.123rf.com/450wm/freeprod/freeprod1608/freeprod160800192/64851432-qu%C3%ADmica-ciencia-laboratorio-probeta-equipo-de-laboratorio.jpg?ver=6')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (60, 3, 3, N'¿Cuantos elementos se han descubierto en la Tierra?', N'https://us.123rf.com/450wm/mgunnouni/mgunnouni2111/mgunnouni211100050/177471148-representaci%C3%B3n-3d-del-planeta-azul-para-papel-tapiz-vista-panor%C3%A1mica-de-la-tierra-la-estrella-y-la.jpg?ver=6')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (61, 4, 1, N'¿Que genero cantaba Michael Jackson?', N'https://catracalivre.com.br/wp-content/uploads/2020/08/vma-racista-450x230.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (62, 4, 1, N'¿Cuantos integrantes tiene la banda Coldplay?', N'https://admin.pathelive.com/uploads/events/406-galerie-photos1333-1662653512.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (63, 4, 2, N'Despues de una decada escribiendo canciones en español, ¿Que artista alcanzó la fama internacional a partir de 2001 con las inglesas?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGe3448AoDOvzPu083iiuaa4vW4enNKQnt5Q&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (64, 4, 2, N'¿Cuál es el disco más vendido de la historia?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGe3448AoDOvzPu083iiuaa4vW4enNKQnt5Q&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (65, 4, 3, N'¿Quién es el llamado "Rey de Rock"?', N'https://us.123rf.com/450wm/sergeypykhonin/sergeypykhonin1709/sergeypykhonin170900040/85856869-letras-de-la-m%C3%BAsica-rock-guitarra-instrumento-de-cuerda-musical-s%C3%ADmbolo-ilustraci%C3%B3n-vectorial.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (67, 4, 3, N'¿Cómo se llama el himno nacional de Francia?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbc0fr3KM4bGBRSps0raU2g2nKWRZbap08731vaWDoaSm-eZX3_gJdV3voLEYSDDG6esQ&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (70, 5, 1, N'¿Cual es la capital de Argentina?', N'https://journalistkc.com/wp-content/uploads/2023/04/WhatsApp-Image-2023-03-30-at-9.15.16-PM.jpeg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (71, 5, 1, N'¿Cuántos océanos hay en la Tierra?', N'https://us.123rf.com/450wm/titonz/titonz1901/titonz190100013/119793038-vista-plana-detallada-del-planeta-tierra-y-sus-accidentes-geogr%C3%A1ficos-mapa-del-mundo-global.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (74, 5, 2, N'¿Cuál es el país más pequeño del mundo?', N'https://us.123rf.com/450wm/gagarych/gagarych2001/gagarych200100171/136759441-mapamundi-con-banderas-de-cada-pa%C3%ADs-proyecci%C3%B3n-de-homolosina-de-goode-pseudocil%C3%ADndrica-de-igual.jpg?ver=6')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (75, 5, 2, N'¿Qué país tiene más habitantes?', N'https://us.123rf.com/450wm/rawpixel/rawpixel1506/rawpixel150612475/41341398-casual-comunidad-gente-comunicaci%C3%B3n-equipo-amistad-concepto.jpg?ver=6')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (77, 5, 3, N'¿Cuál es el río más largo de la Península Ibérica?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFct4dTAY7PcYqfdpIaJYNk2oafwpRDmKSxKY1vVYBkG2K8gTeVo4-gIaqZyIazNgUu8w&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (78, 5, 3, N'¿Cuántos mares existen en la Tierra?
', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2Y6q8zmbR9-DPQVd7--b_TmJ3tfOwcBtgUAvtHjtuZrGvJCsGE9UCYQK39Ft7Gy7nYx0&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (79, 1, 1, N'¿En qué país se celebró la Copa Mundial de la FIFA 2018?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkmEc171wJ9xMxG8IS525VTrOwBFEn88qC0je6dGrRoHuWbwORIjYXIiXbCrywqzocle0&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (80, 1, 1, N'¿Cuál de los siguientes equipos ganó la Copa Mundial de la FIFA en 2014?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_xLIE4w3PB56_USL_IqJE2WM0dUL4ttw_uVd8JfnuaTyMWn69hGGSKK9nTNfC0ezJSEI&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (82, 1, 2, N'¿En qué país se originó el Futbol?', N'https://us.123rf.com/450wm/satkob/satkob2007/satkob200700010/150580767-f%C3%BAtbol-futbol.jpg?ver=6')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (83, 1, 2, N'¿Cuál de estos jugadores es conocido como "La Pulga" y es considerado uno de los mejores futbolistas de todos los tiempos?', N'https://us.123rf.com/450wm/matimix/matimix1904/matimix190400021/121134191-chicos-corriendo-y-pateando-balones-de-f%C3%BAtbol-cerrar-la-acci%C3%B3n-de-los-equipos-de-f%C3%BAtbol-de-ni%C3%B1os.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (84, 1, 3, N'¿Cuál de estos equipos ha ganado más títulos de la UEFA Europa League?', N'https://www.continentalcorrientes.com/multimedia/imagenes/fotos/2023-06-01/883024_crop.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (85, 1, 3, N'¿Cuál es el máximo goleador histórico de la selección de Brasil?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ7M8oNTJSPUa9Zcc20GwMcB-9I-JL44wnIZIyp4QwCQuVhuaO3pTbScERi4uOuJTUpoQ&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (88, 2, 1, N'¿Cuál de las siguientes civilizaciones antiguas se desarrolló a lo largo del río Nilo?', N'https://us.123rf.com/450wm/prill/prill1110/prill111003556/11933946-orilla-paisaje-que-muestra-el-r%C3%ADo-nilo-cerca-de-jinja-en-uganda-%C3%A1frica.jpg?ver=6')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (89, 2, 1, N'¿En qué año comenzó la Primera Guerra Mundial?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIfJiEmBXLehYf4rfdmJaTrfFQchqrXktxBF-9j8xNI4bsSEUrXiQrmGsvpddL-7x7qo4&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (90, 2, 2, N'¿Qué famoso líder dirigió la Revolución Rusa en 1917?', N'https://ceip.org.ar/IMG/jpg/1024px-leo_trotsky_1918_spb.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (91, 2, 2, N'¿Qué evento histórico marcó el final de la Segunda Guerra Mundial en Europa?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQTqJQ97PXqfyuEA6C7V_qdwxCKaQvN0XbuOT7PGEYstU84jVg-9V90B_wW3axQV4Rx4g&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (92, 2, 3, N'¿Cuál fue el nombre del primer satélite artificial lanzado al espacio por la Unión Soviética en 1957?', N'https://us.123rf.com/450wm/cookelma/cookelma1501/cookelma150100093/35123611-sat%C3%A9lite-espacial-orbitando-la-tierra-los-elementos-de-esta-imagen-proporcionada.jpg?ver=6')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (93, 2, 3, N'¿Cuál de las siguientes batallas fue un punto de inflexión en la Guerra del Pacífico durante la Segunda Guerra Mundial y frenó el avance japonés?', N'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Japanese_battleship_Aki.jpg/450px-Japanese_battleship_Aki.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (94, 3, 1, N'Cuál es el número atómico del oxígeno?', N'https://us.123rf.com/450wm/awp31/awp311911/awp31191100705/138231766-vista-de-jeringa-y-botella.jpg?ver=6')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (95, 3, 1, N'Cuál es el símbolo químico del elemento oxígeno?', N'https://us.123rf.com/450wm/awp31/awp311911/awp31191100705/138231766-vista-de-jeringa-y-botella.jpg?ver=6')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (97, 3, 2, N'¿Cuál es el resultado de la siguiente operación: 5² + 3 × 4 - 10 ÷ 2?', N'https://us.123rf.com/450wm/intararit/intararit1604/intararit160400002/54579248-pizarra-con-matem%C3%A1ticas-y-ciencia-escribiendo-en-la-pizarra.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (98, 3, 2, N'¿Cuál es el resultado de la siguiente operación matemática: 3(8 + 2) ÷ 2?', N'https://us.123rf.com/450wm/intararit/intararit1604/intararit160400002/54579248-pizarra-con-matem%C3%A1ticas-y-ciencia-escribiendo-en-la-pizarra.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (99, 3, 3, N' En química, ¿cuál es la ley que establece que "en una reacción química, la masa total de los productos es igual a la masa total de los reactivos"?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGJEsbIMos-rol7Ktuac9U2ds15aFD8GEoIjJoJBzQ9axIPmR_CAv8H6964lJ0qwlKyJU&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (100, 3, 3, N'Cuál es el proceso químico en el cual una sustancia pasa directamente del estado sólido al estado gaseoso sin pasar por el estado líquido?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGJEsbIMos-rol7Ktuac9U2ds15aFD8GEoIjJoJBzQ9axIPmR_CAv8H6964lJ0qwlKyJU&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (102, 4, 1, N'¿Quién es conocido como el "Rey del Pop"?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRF_vRt4pLRs4gcFWL40U6PcrsdbKXtEWOLCWUTw6FYqJBhrPqnKZSWHpeNCZhURqANN0&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (103, 4, 1, N'¿Qué instrumento toca una persona que utiliza baquetas para golpearlo?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhyGp_CSxXjMa0BoB6HEPvveTWhmg4w3LgIOBE7NjXPMT4CGPb8D7ktdVLYGdRCMP4XBs&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (105, 4, 2, N'¿Qué famoso compositor es conocido por su obra "Für Elise"?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhyGp_CSxXjMa0BoB6HEPvveTWhmg4w3LgIOBE7NjXPMT4CGPb8D7ktdVLYGdRCMP4XBs&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (106, 4, 2, N'¿Qué instrumento musical tiene teclas blancas y negras y se toca con las manos?', N'https://www.zonaindie.com.ar/wp-content/uploads/2011/07/samalea.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (107, 4, 3, N'¿Cuál de las siguientes obras musicales fue compuesta por Johann Sebastian Bach?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhyGp_CSxXjMa0BoB6HEPvveTWhmg4w3LgIOBE7NjXPMT4CGPb8D7ktdVLYGdRCMP4XBs&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (108, 4, 3, N'Cuál de las siguientes bandas es considerada pionera del género "rock progresivo"?', N'https://us.123rf.com/450wm/sergeypykhonin/sergeypykhonin1709/sergeypykhonin170900040/85856869-letras-de-la-m%C3%BAsica-rock-guitarra-instrumento-de-cuerda-musical-s%C3%ADmbolo-ilustraci%C3%B3n-vectorial.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (109, 5, 3, N'¿Cuál es el río más largo del mundo?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMyzC8pZmE8yrSWHaEqm79ZU_ybvV62I27OSXKGG1PxnMDduMMJq2eROwv0xVOvhjvMvI&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (110, 5, 1, N'¿Cuál es la capital de Canadá?', N'https://us.123rf.com/450wm/sinenkiy/sinenkiy2305/sinenkiy230505720/204849625-bandera-de-canad%C3%A1-ondeando-del-cielo-azul.jpg?ver=6')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (111, 5, 2, N'¿Cuál de los siguientes océanos es el más grande por área?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHQGdZwAMG7asrkU8WX_cr5L9BGeZNjo4QH3zZ7kO5mUgVrq0X3f_nWNDUVs5WLzFDeY4&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (112, 5, 2, N'¿Cuál de los siguientes países no comparte una frontera con Rusia?', N'https://us.123rf.com/450wm/bbsferrari/bbsferrari1504/bbsferrari150400001/38947109-iglesia-de-san-jorge-el-victorioso-odintsovo-regi%C3%B3n-de-mosc%C3%BA-rusia.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (113, 5, 1, N'¿En qué continente se encuentra la cordillera de los Andes?', N'https://us.123rf.com/450wm/javarman/javarman1005/javarman100500050/6993577-monta%C3%B1a-de-cerro-torre-patagonia-argentina.jpg?ver=6')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (116, 5, 3, N'¿Cuál es el punto más alto de la Tierra, situado en la cordillera del Himalaya?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgfHFPJ_NH9WvKJFGrr8ikrtFCk4vSSg_UY5NUrCjx_Nlgi4YK5xTx5bewZ1x1c5Gii9c&usqp=CAU')
SET IDENTITY_INSERT [dbo].[Preguntas] OFF
GO
SET IDENTITY_INSERT [dbo].[Puntajes] ON 

INSERT [dbo].[Puntajes] ([IdUsuario], [Nombre], [Puntos], [FechaHora]) VALUES (1, N'524', 600, CAST(N'2023-08-31T15:07:02.150' AS DateTime))
SET IDENTITY_INSERT [dbo].[Puntajes] OFF
GO
SET IDENTITY_INSERT [dbo].[Respuestas] ON 

INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (1, 1, 1, N'Cristiano Ronaldo', 0, NULL, 0, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (2, 1, 2, N'Lionel Messi', 1, NULL, 5, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (7, 1, 3, N'Lionel Mesi', 0, NULL, 0, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (8, 1, 4, N'Diego Maradona', 0, NULL, 0, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (10, 2, 1, N'Trueno', 0, NULL, 0, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (11, 2, 2, N'Duki', 0, NULL, 0, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (13, 2, 3, N'Chano', 0, NULL, 0, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (14, 2, 4, N'Wos', 1, NULL, 3, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (15, 3, 1, N'Intercontinental', 1, NULL, 2, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (37, 3, 2, N'Internacional', 0, NULL, 2, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (39, 3, 3, N'Copa del mundo', 0, NULL, 0, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (40, 3, 4, N'Mundial de Clubes', 0, NULL, 0, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (41, 4, 1, N'1', 1, NULL, 0, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (42, 4, 2, N'2', 0, NULL, 1, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (43, 4, 3, N'0', 0, NULL, 1, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (44, 4, 4, N'3', 0, NULL, 0, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (45, 5, 1, N'1', 0, NULL, 1, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (46, 5, 2, N'2', 0, NULL, 2, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (47, 5, 3, N'3', 1, NULL, 0, 300, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (48, 5, 4, N'Ninguna', 0, NULL, 1, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (51, 6, 1, N'78/79 - 80/81', 0, NULL, 4, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (52, 6, 2, N'78/79 - 79/80', 1, NULL, 3, 300, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (53, 6, 3, N'80/81 - 81/82', 0, NULL, 1, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (54, 6, 4, N'78/79 - 81/82', 0, NULL, 1, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (56, 7, 1, N'Belgrano', 1, NULL, 6, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (57, 7, 2, N'San Martin', 0, NULL, 3, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (58, 8, 1, N'1492', 1, NULL, 1, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (59, 8, 2, N'1521', 0, NULL, 0, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (61, 8, 3, N'1942', 0, NULL, 1, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (63, 8, 4, N'1776', 0, NULL, 0, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (64, 9, 1, N'1943', 1, NULL, 5, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (65, 9, 2, N'1930', 0, NULL, 5, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (66, 10, 1, N'Alemania, Estados Unidos y Francia', 0, NULL, 1, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (67, 10, 2, N'Francia, Reino Unido y Rusia', 0, NULL, 4, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (68, 10, 3, N'Alemania, Italia y el Imperio Austro-Húngaro', 1, NULL, 1, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (69, 10, 4, N'Reino Unido, Francia y Japón', 0, NULL, 0, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (71, 11, 1, N'Joseph Goebbels', 1, NULL, 5, 300, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (72, 11, 2, N'Heinrich Himmler', 0, NULL, 1, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (73, 11, 3, N'Josef Mengele', 0, NULL, 0, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (74, 11, 4, N'Adolf Hitler', 0, NULL, 1, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (76, 12, 1, N'Quechua', 0, NULL, 1, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (77, 12, 2, N'Español', 0, NULL, 2, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (78, 12, 3, N'Aymara', 0, NULL, 0, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (79, 12, 4, N'Náhuatl', 1, NULL, 5, 300, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (81, 13, 1, N'100', 0, NULL, 1, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (82, 13, 2, N'110', 1, NULL, 1, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (83, 13, 3, N'120', 0, NULL, 0, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (84, 13, 4, N'101', 0, NULL, 0, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (85, 14, 1, N'5', 1, NULL, 9, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (86, 14, 2, N'25', 0, NULL, 0, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (88, 14, 3, N'15', 0, NULL, 0, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (89, 14, 4, N'No tiene', 0, NULL, 1, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (90, 15, 1, N'Lateral Izquierdo', 0, NULL, 2, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (91, 15, 2, N'Sodio', 0, NULL, 4, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (92, 15, 3, N'Hierro', 0, NULL, 0, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (93, 15, 4, N'Litio', 1, NULL, 1, 300, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (94, 16, 1, N'La transferencia de energia entre cuerpos', 0, NULL, 0, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (95, 16, 2, N'Nada', 0, NULL, 2, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (96, 16, 3, N'Todo lo que refleja', 0, NULL, 0, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (97, 16, 4, N'Todo lo que ocupa un lugar en el espacio', 1, NULL, 4, 300, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (98, 17, 1, N'12', 1, NULL, 1, 300, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (99, 17, 2, N'13', 0, NULL, 6, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (101, 18, 1, N'Congelado, acuoso, vapor', 0, NULL, 1, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (102, 18, 2, N'Átomo, molécula, compuesto', 0, NULL, 6, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (103, 18, 3, N'Gaseoso, líquido, sólido', 1, NULL, 0, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (104, 18, 4, N'Homogéneo y heterogéneo', 0, NULL, 3, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (105, 19, 1, N'SC Braga', 1, NULL, 4, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (106, 19, 2, N'Sporting de Lisboa', 0, NULL, 8, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (107, 20, 1, N'Tratame Suavemente', 1, NULL, 2, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (108, 20, 2, N'A las Nueve', 0, NULL, 2, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (109, 20, 3, N'Flaca', 0, NULL, 0, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (110, 20, 4, N'Cuando no Estás', 1, NULL, 21, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (111, 22, 1, N'Michael Jackson', 0, NULL, 0, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (112, 22, 2, N'Maradona', 0, NULL, 0, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (114, 22, 3, N'Taylor Swift', 0, NULL, 0, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (116, 22, 4, N'Madonna', 1, NULL, 1, 300, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (117, 23, 1, N'Falso', 1, NULL, 3, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (118, 23, 2, N'Verdadero', 0, NULL, 18, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (119, 24, 1, N'Shaggy', 1, NULL, 0, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (120, 24, 2, N'Sheryl Crow', 0, NULL, 2, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (121, 24, 3, N'Bruce Springsteen', 0, NULL, 0, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (123, 24, 4, N'Ninguna es correcta', 0, NULL, 1, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (125, 25, 1, N'Billie Jean', 1, NULL, 2, 300, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (126, 25, 2, N'Thriller', 0, NULL, 1, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (127, 25, 3, N'Beat it', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (128, 26, 1, N'America Central', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (129, 26, 2, N'America del Norte', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (130, 26, 3, N'America del Sur', 1, NULL, NULL, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (131, 26, 4, N'Africa', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (134, 28, 1, N'No tiene tierra propia', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (135, 28, 2, N'Europa', 1, NULL, NULL, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (136, 28, 3, N'America Central', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (139, 30, 1, N'Rio de Janeiro', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (140, 30, 2, N'Brasilia', 1, NULL, NULL, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (141, 30, 3, N'Goias', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (142, 30, 4, N'Sao Paulo', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (143, 31, 1, N'New York', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (144, 31, 2, N'Florida', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (146, 31, 3, N'Michigan', 0, NULL, NULL, 0, 2)
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (147, 31, 4, N'Washington D. C.', 1, NULL, NULL, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (148, 32, 1, N'No existe', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (149, 32, 2, N'Asia', 1, NULL, NULL, 300, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (150, 32, 3, N'Africa', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (151, 32, 4, N'Europa', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (152, 33, 1, N'Rusia', 1, NULL, NULL, 300, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (153, 33, 2, N'Reino Unido', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (155, 33, 3, N'Alemania', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (156, 33, 4, N'China', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (157, 34, 1, N'1', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (159, 34, 2, N'2', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (160, 34, 3, N'3', 1, NULL, NULL, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (161, 34, 4, N'4', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (162, 35, 1, N'1', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (163, 35, 2, N'2', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (164, 35, 3, N'0', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (166, 35, 4, N'3', 1, NULL, NULL, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (167, 36, 1, N'9', 1, NULL, NULL, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (168, 36, 2, N'8', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (169, 36, 3, N'15', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (170, 36, 4, N'10', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (171, 37, 1, N'3', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (172, 37, 2, N'2', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (173, 37, 3, N'1', 1, NULL, NULL, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (174, 37, 4, N'4', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (175, 38, 1, N'Palavecino', 1, NULL, NULL, 300, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (176, 38, 2, N'Paraquevino', 1, NULL, NULL, 300, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (177, 38, 3, N'Quintero', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (178, 38, 4, N'De la cruz', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (179, 39, 1, N'No hay', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (180, 39, 2, N'1', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (181, 39, 3, N'2', 1, NULL, NULL, 300, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (182, 39, 4, N'3', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (183, 45, 1, N'Jorge Macri', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (185, 45, 2, N'Mauricio Macri', 1, NULL, NULL, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (186, 45, 3, N'Cristina Kirchner', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (187, 45, 4, N'Daniel Scioli', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (188, 47, 1, N'1945', 1, NULL, NULL, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (189, 47, 2, N'1939', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (190, 47, 3, N'1904', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (191, 47, 4, N'1950', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (192, 48, 1, N'9', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (193, 48, 2, N'10', 1, NULL, NULL, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (194, 48, 3, N'11', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (195, 48, 4, N'4', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (196, 50, 1, N'1910', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (197, 50, 2, N'1812', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (198, 50, 3, N'1912', 1, NULL, NULL, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (199, 50, 4, N'1810', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (200, 51, 1, N'Nestor Kirchner', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (201, 51, 2, N'Julio Roca', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (202, 51, 3, N'Marcelo Alvear', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (203, 51, 4, N'Nicolas Avellaneda', 1, NULL, NULL, 300, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (204, 52, 1, N'5 años', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (205, 52, 2, N'19 años', 1, NULL, NULL, 300, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (206, 52, 3, N'12 años', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (207, 52, 4, N'2 meses', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (208, 53, 1, N'56', 1, NULL, NULL, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (209, 53, 2, N'49', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (210, 53, 3, N'55', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (211, 53, 4, N'58', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (212, 54, 1, N'20', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (213, 54, 2, N'25', 1, NULL, NULL, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (214, 54, 3, N'5', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (215, 54, 4, N'15,5', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (216, 56, 1, N'Sodio', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (217, 56, 2, N'Agua', 1, NULL, NULL, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (218, 56, 3, N'Aire', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (219, 56, 4, N'Hierro', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (220, 57, 1, N'Positiva', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (221, 57, 2, N'Negativa', 1, NULL, NULL, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (222, 57, 3, N'Neutro', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (223, 57, 4, N'Todas son Incorrectas', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (224, 58, 1, N'Subliminación progresiva', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (225, 58, 2, N'Subliminación regresiva o inversa', 1, NULL, NULL, 300, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (226, 58, 3, N'Condensación', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (228, 58, 4, N'Derretimiento', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (229, 60, 1, N'118', 1, NULL, NULL, 300, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (230, 60, 2, N'119', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (231, 60, 3, N'117', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (232, 60, 4, N'116', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (233, 61, 1, N'Pop', 1, NULL, NULL, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (234, 61, 2, N'Trap', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (235, 61, 3, N'Rock', 1, NULL, NULL, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (236, 61, 4, N'Ninguna de estas', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (237, 62, 1, N'3', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (238, 62, 2, N'5', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (239, 62, 3, N'4', 1, NULL, NULL, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (240, 62, 4, N'6', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (242, 63, 1, N'Ricky Martin', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (245, 63, 2, N'Michael Jackson', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (246, 63, 3, N'Ozuna', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (247, 63, 4, N'Shakira', 1, NULL, NULL, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (248, 64, 1, N'Thriller', 1, NULL, NULL, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (249, 64, 2, N'Back in Black', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (250, 64, 3, N'Hotel California', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (251, 64, 4, N'Lover', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (252, 65, 1, N'Elvis Presley', 1, NULL, NULL, 300, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (253, 65, 2, N'Michael Jackson', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (254, 65, 3, N'Freddie Mercury', 0, NULL, NULL, 0, 3)
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (255, 65, 4, N'Bob Dylan', 0, NULL, NULL, 0, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (302, 67, 1, N'Le Parisiene', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (304, 67, 2, N'La Marsella', 1, NULL, NULL, 100, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (305, 67, 3, N'Marcha Real', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (306, 67, 4, N'No tiene nombre', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (307, 70, 1, N'Mendoza', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (308, 70, 2, N'Buenos Aires', 1, NULL, NULL, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (309, 70, 3, N'Cordoba', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (310, 70, 4, N'Santa Fe', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (311, 71, 1, N'5', 1, NULL, NULL, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (314, 71, 2, N'4', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (315, 71, 3, N'7', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (316, 71, 4, N'6', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (317, 74, 1, N'El Vaticano', 1, NULL, NULL, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (318, 74, 2, N'San Marino', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (319, 74, 3, N'Sri Lanka', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (321, 74, 4, N'Mar Del Plata', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (322, 75, 1, N'Rusia', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (323, 75, 2, N'China', 1, NULL, NULL, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (324, 75, 3, N'Brasil', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (325, 75, 4, N'Estados Unidos', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (326, 77, 1, N'Miño', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (327, 77, 2, N'Nilo', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (328, 77, 3, N'Tajo', 1, NULL, NULL, 100, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (329, 77, 4, N'Júcar', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (330, 78, 1, N'57', 1, NULL, NULL, 100, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (331, 78, 2, N'30', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (333, 78, 3, N'27', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (334, 78, 4, N'29', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (335, 79, 1, N'Brasil', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (336, 79, 2, N'Rusia', 1, NULL, NULL, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (337, 79, 3, N'Qatar', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (338, 79, 4, N'Francia', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (339, 80, 1, N'Alemania', 1, NULL, NULL, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (340, 80, 2, N'Brasil', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (341, 80, 3, N'Argentina', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (343, 80, 4, N'Francia', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (344, 82, 1, N'Argentina', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (345, 82, 2, N'Uruguay', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (346, 82, 3, N'Brasil', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (347, 82, 4, N'Inglaterra', 1, NULL, NULL, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (348, 83, 1, N'Messi', 1, NULL, NULL, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (349, 83, 2, N'Maradona', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (350, 83, 3, N'Pele', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (351, 83, 4, N'Cristiano Ronaldo', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (352, 84, 1, N'Liverpool', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (353, 84, 2, N'Juventus', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (354, 84, 3, N'Inter Milan', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (355, 84, 4, N'Sevilla', 1, NULL, NULL, 100, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (357, 85, 1, N'Neymar', 1, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (358, 85, 2, N'Pele', 0, NULL, NULL, 100, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (359, 85, 3, N'Ronaldo Nazario', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (360, 85, 4, N'Rivaldo', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (361, 88, 3, N'Egipto', 1, NULL, NULL, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (362, 88, 1, N'Mesopotamia', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (363, 88, 2, N'Grecia', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (364, 88, 4, N'Roma', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (365, 89, 1, N'1905', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (366, 89, 2, N'1922', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (367, 89, 3, N'1914', 1, NULL, NULL, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (368, 89, 4, N'1939', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (369, 90, 1, N'Winston Churchill', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (370, 90, 2, N'Adolf Hitler', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (372, 90, 3, N'Joseph Stalin', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (373, 90, 4, N'Vladimir Lenin', 1, NULL, NULL, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (376, 91, 1, N'Caida del Muro de Berlin', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (378, 91, 2, N'Rendicion de Alemania', 1, NULL, NULL, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (379, 91, 3, N'Ataque a Pearl Harbor', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (380, 91, 4, N'Tratado de Versalles', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (381, 92, 1, N'Explorer 1', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (382, 92, 2, N'Hubble', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (383, 92, 3, N'Sputnik 1', 1, NULL, NULL, 100, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (384, 92, 4, N'Voyager 1', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (385, 93, 1, N'Batalla de Midway', 1, NULL, NULL, 100, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (386, 93, 2, N'Batalla de Stalingrado', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (387, 93, 3, N'Batalla de Iwo Jima', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (388, 93, 4, N'Batalla de El Alamein', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (389, 94, 4, N'8', 1, NULL, NULL, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (390, 94, 3, N'32', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (391, 94, 2, N'16', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (393, 94, 1, N'4', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (394, 95, 1, N'Ox', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (395, 95, 2, N'Oxg', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (396, 95, 3, N'O', 1, NULL, NULL, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (397, 95, 4, N'Oz', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (398, 97, 1, N'20', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (399, 97, 2, N'15', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (400, 97, 3, N'10', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (402, 97, 4, N'17', 1, NULL, NULL, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (403, 98, 1, N'16', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (404, 98, 2, N'10', 1, NULL, NULL, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (405, 98, 3, N'12', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (406, 98, 4, N'26', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (407, 99, 1, N'Ley de Boyle-Mariotte', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (408, 99, 2, N'Ley de Avogadro', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (409, 99, 3, N'Ley de Hess', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (410, 99, 4, N'Ley de la Conservación de la Masa', 1, NULL, NULL, 100, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (411, 100, 1, N'Fusion', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (412, 100, 2, N'Subliminacion Inversa', 1, NULL, NULL, 100, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (413, 100, 3, N'Evaporacion', 0, NULL, NULL, 0, NULL)
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (414, 100, 4, N'Subliminacion', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (415, 102, 1, N'Michael Jackson', 1, NULL, NULL, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (416, 102, 2, N'Elvis Presley', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (417, 102, 3, N'Freddie Mercury', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (418, 102, 4, N'Madonna', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (420, 103, 1, N'Piano', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (421, 103, 2, N'Violin', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (422, 103, 3, N'Flauta', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (423, 103, 4, N'Bateria', 1, NULL, NULL, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (424, 105, 1, N'Mozart', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (425, 105, 2, N'Beethoven', 1, NULL, NULL, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (426, 105, 3, N'Sebastian Bach', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (428, 105, 4, N'Franz Schubert', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (429, 106, 1, N'Violin', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (430, 106, 2, N'Piano', 1, NULL, NULL, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (431, 106, 3, N'Flauta', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (432, 106, 4, N'Trompeta', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (433, 107, 1, N'Misa en si menor', 1, NULL, NULL, 100, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (434, 107, 2, N'Las Cuatro Estaciones', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (435, 107, 3, N'Sinfonía No. 9', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (436, 107, 4, N'Réquiem', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (437, 108, 1, N'The Rolling Stones', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (438, 108, 2, N'Pink Floyd', 1, NULL, NULL, 100, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (439, 108, 3, N'The Beatles', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (440, 108, 4, N'Led Zeppelin', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (441, 109, 1, N'Rio Amazonas', 1, NULL, NULL, 100, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (442, 109, 2, N'Rio Nilo', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (443, 109, 3, N'Rio Misisipi', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (444, 109, 4, N'Rio Yangtsé', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (445, 110, 1, N'Toronto', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (446, 110, 2, N'Vancouver', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (447, 110, 3, N'Montreal', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (448, 110, 4, N'Ottawa', 1, NULL, NULL, 100, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (449, 111, 1, N'Océano Atlántico', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (450, 111, 2, N'Océano Pacífico', 1, NULL, NULL, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (451, 111, 3, N'Océano Índico', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (452, 111, 4, N'Océano Ártico', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (453, 112, 1, N'Ucrania', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (454, 112, 2, N'Finlandia', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (455, 112, 3, N'Mongolia', 0, NULL, NULL, 0, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (456, 112, 4, N'Noruega', 1, NULL, NULL, 200, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (457, 116, 1, N'Monte Everest', 1, NULL, NULL, 100, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (458, 116, 2, N'Monte Kilimanjaro', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (459, 116, 3, N'Montaña K2', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (461, 116, 4, N'Monte McKinley', 0, NULL, NULL, 0, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (463, 113, 1, N'Asia', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (464, 113, 2, N'Europa', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (465, 113, 3, N'África', 0, NULL, NULL, 0, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada], [Puntos], [IdDificultad]) VALUES (466, 113, 4, N'América', 1, NULL, NULL, 100, 1)
SET IDENTITY_INSERT [dbo].[Respuestas] OFF
GO
ALTER TABLE [dbo].[Preguntas]  WITH CHECK ADD  CONSTRAINT [FK_Preguntas_Categorias] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categorias] ([IdCategoria])
GO
ALTER TABLE [dbo].[Preguntas] CHECK CONSTRAINT [FK_Preguntas_Categorias]
GO
ALTER TABLE [dbo].[Preguntas]  WITH CHECK ADD  CONSTRAINT [FK_Preguntas_Dificultades] FOREIGN KEY([IdDificultad])
REFERENCES [dbo].[Dificultades] ([IdDificultad])
GO
ALTER TABLE [dbo].[Preguntas] CHECK CONSTRAINT [FK_Preguntas_Dificultades]
GO
ALTER TABLE [dbo].[Respuestas]  WITH CHECK ADD  CONSTRAINT [FK_Respuestas_Dificultades] FOREIGN KEY([IdDificultad])
REFERENCES [dbo].[Dificultades] ([IdDificultad])
GO
ALTER TABLE [dbo].[Respuestas] CHECK CONSTRAINT [FK_Respuestas_Dificultades]
GO
ALTER TABLE [dbo].[Respuestas]  WITH CHECK ADD  CONSTRAINT [FK_Respuestas_Preguntas] FOREIGN KEY([IdPregunta])
REFERENCES [dbo].[Preguntas] ([IdPregunta])
GO
ALTER TABLE [dbo].[Respuestas] CHECK CONSTRAINT [FK_Respuestas_Preguntas]
GO
/****** Object:  StoredProcedure [dbo].[sp_Listar_Categorias]    Script Date: 31/8/2023 15:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_Listar_Categorias]
AS
BEGIN
SELECT * From Categorias
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Listar_Dificultades]    Script Date: 31/8/2023 15:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Listar_Dificultades]
AS
BEGIN
SELECT * FROM Dificultades
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Mostrar_Pregunta_y_Categoria_Seleccionada]    Script Date: 31/8/2023 15:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Mostrar_Pregunta_y_Categoria_Seleccionada]
@Categoria VARCHAR(1000),
@Dificultad INT
AS
BEGIN
SELECT * FROM Preguntas WHERE IdDificultad = @Dificultad AND IdCategoria = @Categoria
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Mostrar_Preguntas]    Script Date: 31/8/2023 15:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Mostrar_Preguntas]
AS
BEGIN
SELECT * From Preguntas
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Mostrar_Una_Categoria]    Script Date: 31/8/2023 15:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Mostrar_Una_Categoria]
@Categoria VARCHAR(1000)
AS
BEGIN
SELECT * FROM Preguntas WHERE IdCategoria = @Categoria
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Mostrar_Una_Dificultad]    Script Date: 31/8/2023 15:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Mostrar_Una_Dificultad]
@Dificultad INT
AS
BEGIN
SELECT * FROM Preguntas WHERE IdDificultad = @Dificultad
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Obtener_Respuesta]    Script Date: 31/8/2023 15:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Obtener_Respuesta]
@idPregunta INT
AS
BEGIN
SELECT * FROM Respuestas WHERE IdPregunta = @idPregunta
END
GO
