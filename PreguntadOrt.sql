USE [PreguntadOrt]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 9/8/2023 16:05:09 ******/
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
/****** Object:  Table [dbo].[Dificultades]    Script Date: 9/8/2023 16:05:09 ******/
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
/****** Object:  Table [dbo].[Preguntas]    Script Date: 9/8/2023 16:05:09 ******/
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
/****** Object:  Table [dbo].[Puntajes]    Script Date: 9/8/2023 16:05:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puntajes](
	[IdPuntaje] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](1000) NULL,
	[Puntos] [int] NULL,
	[FechaHora] [datetime] NULL,
	[Tiempo] [int] NULL,
 CONSTRAINT [PK_Puntajes] PRIMARY KEY CLUSTERED 
(
	[IdPuntaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Respuestas]    Script Date: 9/8/2023 16:05:09 ******/
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

INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (1, 1, 1, N'¿Cual es el nombre completo de este futbolista?', N'https://i.pinimg.com/originals/c3/f8/b5/c3f8b5d3e9a61af0fcc7c67d5532ad38.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (2, 4, 1, N'¿Como se llama el artista de la imagen?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQw8awviDVLm2LKQI4Iyt2LX-hThzEFTNfEtOsqO5UUzjGMq8pIoUX__UqGEfVl1ImrpLM&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (3, 1, 2, N'¿Como se llamaba lo que hoy en dia es el Mundial de Clubes?', N'https://e7.pngegg.com/pngimages/490/156/png-clipart-2017-fifa-club-world-cup-final-zayed-sports-city-stadium-al-jazira-club-international-clubs-club-world-cup-others-miscellaneous-sport.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (4, 1, 2, N'¿Cuantas copas del mundo tiene la seleccion Inglesa?', N'https://w7.pngwing.com/pngs/894/267/png-transparent-2018-world-cup-england-national-football-team-2010-fifa-world-cup-england-at-the-fifa-world-cup-england-team-computer-wallpaper-world.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (5, 1, 3, N'¿Cuantas copas libertadores tiene Olimpia de Paraguay?', N'https://w7.pngwing.com/pngs/453/29/png-transparent-club-olimpia-2018-paraguayan-primera-division-season-football-association-football.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (6, 1, 3, N'¿En que año el Nottingham Forest conquistó sus 2 Champions League?', N'https://3.bp.blogspot.com/-8qiWnykcqzM/XKVbuImwB1I/AAAAAAABUzk/IzWGeygXffIxW3yoF5oFoGkVJOW_GtyVgCLcBGAs/s1600/Nottingham%2BForest%2BFC.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (7, 2, 1, N'¿Quien creó la bandera Argentina?', N'https://w7.pngwing.com/pngs/399/65/png-transparent-argentina-flag-country-nation-national-flag.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (8, 2, 1, N'¿En que año Cristobal Colón llegó a América?', N'https://www.pngmart.com/files/10/Christopher-Columbus-PNG-Transparent-Image-1.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (9, 2, 2, N'¿En que año terminó la década infame?', N'https://upload.wikimedia.org/wikipedia/commons/b/bc/4presidentes%284%29.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (10, 2, 2, N'¿Quienes formaban la famosa "Triple Alianza"?', N'https://w7.pngwing.com/pngs/326/49/png-transparent-military-army-ww2-mortar-world-war-world-war-2-ww2.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (11, 2, 3, N'¿Como se llamaba el ministro de propaganda aleman en el periodo entreguerras?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSITtdzugrV-llYnf4IqZzSlRfHFOsnlcUTtEsXnNHebsXN4Aomdu7yxhH9dSrK-x9yz44&usqp=CAU')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (12, 2, 3, N'¿Que idioma hablaban los aztecas?', N'https://w7.pngwing.com/pngs/332/988/png-transparent-maya-civilization-aztec-empire-aztec-religion-huitzilopochtli-god-food-flower-fictional-character.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (13, 3, 1, N'¿Cuanto es 99 + 11?', N'https://w7.pngwing.com/pngs/1018/306/png-transparent-mathematics-number-worksheet-mathematics-child-text-elementary-school.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (14, 3, 2, N'¿Cual es la raíz cúbica de 125?', N'https://cdn-icons-png.flaticon.com/512/2070/2070904.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (15, 3, 3, N'¿Que significa LI en la tabla periodica?', N'https://png.pngtree.com/png-clipart/20220306/original/pngtree-periodic-table-of-the-element-original-handwriting-png-image_7401110.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (16, 3, 3, N'¿Qué es la materia?', N'https://img2.freepng.es/20181126/opo/kisspng-vector-graphics-logo-image-matter-stock-illustrati-7-styles-of-learning-which-one-fits-you-brigh-5bfb90a9ed5d21.3763659515432132259723.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (17, 3, 1, N'9 * x = 108.  ¿Que numero es X?', N'https://img.a.transfermarkt.technology/portrait/big/3139-1459504284.jpg?lm=1')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (18, 3, 2, N'Cuáles son los estados de la materia?
', N'https://img2.freepng.es/20190327/ceo/kisspng-state-of-matter-solid-gas-liquid-5c9c466b03dc55.7202687515537455150158.jpg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (19, 1, 1, N'¿En cual de estos cluber NO jugó Cristiano Ronaldo?', N'https://w7.pngwing.com/pngs/451/479/png-transparent-cristiano-ronaldo-manchester-united-f-c-jersey-football-cristiano-ronaldo.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (20, 4, 2, N'¿Cual de estas canciones pertenece a Soda Stereo?', N'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e36b0ffe-3588-4d9f-8212-e01a235161d9/dc7zy8d-ae56dd36-999c-4d3f-bea4-ddba9a1b7565.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2UzNmIwZmZlLTM1ODgtNGQ5Zi04MjEyLWUwMWEyMzUxNjFkOVwvZGM3enk4ZC1hZTU2ZGQzNi05OTljLTRkM2YtYmVhNC1kZGJhOWExYjc1NjUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.Xb2VkYlQTPhBg_gns2ursoNOtZCsX_uvyqrkZ1sHkaA')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (22, 4, 3, N'¿Qué estrella de los 80 es reconocida por Guinness World Records como la artista femenina más vendida de todos los tiempos?', N'https://images.vexels.com/media/users/3/183639/isolated/preview/ebb05433ee904f9053664d54cc3ca0e6-simbolo-de-dibujado-a-mano-de-musica-pop-de-microfono-negro.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (23, 4, 1, N'El famoso musico Andres Calamaro formaba parte del grupo Soda Stereo', N'https://imgs.elpais.com.uy/dims4/default/4a7ac59/2147483647/strip/true/crop/793x545+56+0/resize/1440x990!/quality/90/?url=https%3A%2F%2Fel-pais-uruguay-production-web.s3.amazonaws.com%2Fbrightspot%2Fuploads%2F2017%2F09%2F08%2F59b3136565e44.jpeg')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (24, 4, 2, N'¿Quién ganó un Grammy al mejor álbum de reggae en 1995 con Boombastic?', N'https://e7.pngegg.com/pngimages/831/726/png-clipart-grammy-awards-trophy-grammy-award-world-landmarks-hollywood.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (25, 4, 3, N'Michael Jackson debutó con su característico paseo lunar, ¿durante qué canción en 1983?', N'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/77a638c2-9d34-4f8d-9aef-edb8d196b304/d6bqtan-214c381c-d03f-4a06-b3f4-21bd7c5b38c8.png/v1/fill/w_473,h_632/michael_jackson_png_by_brokenheartdesignz_d6bqtan-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NjMyIiwicGF0aCI6IlwvZlwvNzdhNjM4YzItOWQzNC00ZjhkLTlhZWYtZWRiOGQxOTZiMzA0XC9kNmJxdGFuLTIxNGMzODFjLWQwM2YtNGEwNi1iM2Y0LTIxYmQ3YzViMzhjOC5wbmciLCJ3aWR0aCI6Ijw9NDczIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0._zR4VvPb4QL2WEdlAhT5iuplQcd37Opvzlu-4XL8s00')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (26, 5, 1, N'¿En que continente está Venezuela?', N'https://w7.pngwing.com/pngs/33/391/png-transparent-flag-of-venezuela-flag-miscellaneous-flag-leaf.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (28, 5, 1, N'¿En que continente está San Marino?', N'https://w7.pngwing.com/pngs/888/719/png-transparent-san-marino-country-europe-flag-borders-map-nation-geography-cartography-svg-thumbnail.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (30, 5, 2, N'¿Cual es la capital de Brasil?', N'https://w7.pngwing.com/pngs/362/705/png-transparent-brazil-brazil-map-flag.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (31, 5, 2, N'¿Cual es la capital de Estados Unidos?', N'https://e7.pngegg.com/pngimages/476/1/png-clipart-usa-map-usa-map.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (32, 5, 3, N'¿Donde está Sri Lanka?', N'https://e7.pngegg.com/pngimages/577/600/png-clipart-independence-day-of-sri-lanka-flag-of-sri-lanka-sri-lankan-independence-movement-indian-independence-day-fire-pepper-miscellaneous-food-thumbnail.png')
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (33, 5, 3, N'¿Quién le vendió Alaska a Estados Unidos?', N'https://w7.pngwing.com/pngs/668/499/png-transparent-flag-of-alaska-map-map-blue-flag-computer-wallpaper-thumbnail.png')
SET IDENTITY_INSERT [dbo].[Preguntas] OFF
GO
SET IDENTITY_INSERT [dbo].[Puntajes] ON 

INSERT [dbo].[Puntajes] ([IdPuntaje], [UserName], [Puntos], [FechaHora], [Tiempo]) VALUES (17, N'Nachito kurman', 1000, CAST(N'2022-09-14T11:59:16.727' AS DateTime), 4)
INSERT [dbo].[Puntajes] ([IdPuntaje], [UserName], [Puntos], [FechaHora], [Tiempo]) VALUES (18, N'Messi', 500, CAST(N'2022-09-14T12:01:04.470' AS DateTime), 4)
INSERT [dbo].[Puntajes] ([IdPuntaje], [UserName], [Puntos], [FechaHora], [Tiempo]) VALUES (19, N'Thomas Korni', 500, CAST(N'2022-09-14T12:01:31.603' AS DateTime), 11)
INSERT [dbo].[Puntajes] ([IdPuntaje], [UserName], [Puntos], [FechaHora], [Tiempo]) VALUES (20, N'ededed', 0, CAST(N'2022-09-15T13:48:54.100' AS DateTime), 52)
INSERT [dbo].[Puntajes] ([IdPuntaje], [UserName], [Puntos], [FechaHora], [Tiempo]) VALUES (21, N'd', 0, CAST(N'2022-09-15T13:49:04.593' AS DateTime), 4)
INSERT [dbo].[Puntajes] ([IdPuntaje], [UserName], [Puntos], [FechaHora], [Tiempo]) VALUES (22, N'e', 500, CAST(N'2022-09-15T13:49:18.067' AS DateTime), 4)
INSERT [dbo].[Puntajes] ([IdPuntaje], [UserName], [Puntos], [FechaHora], [Tiempo]) VALUES (23, N'e', 500, CAST(N'2022-09-15T13:49:55.290' AS DateTime), 4)
INSERT [dbo].[Puntajes] ([IdPuntaje], [UserName], [Puntos], [FechaHora], [Tiempo]) VALUES (24, N'e', 500, CAST(N'2022-09-15T13:49:56.123' AS DateTime), 4)
INSERT [dbo].[Puntajes] ([IdPuntaje], [UserName], [Puntos], [FechaHora], [Tiempo]) VALUES (25, N'Julian', 5500, CAST(N'2022-09-15T13:57:04.550' AS DateTime), 418)
SET IDENTITY_INSERT [dbo].[Puntajes] OFF
GO
SET IDENTITY_INSERT [dbo].[Respuestas] ON 

INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (1, 1, 1, N'2 años
', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (2, 1, 2, N'Depende de si es un virus o no', 1, NULL, 5)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (7, 1, 3, N'Son incurables', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (8, 1, 4, N'De 3 a 5 años.', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (10, 2, 1, N'Sexo anal', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (11, 2, 2, N'Sexo oral.', 0, NULL, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (13, 2, 3, N'Sangre', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (14, 2, 4, N'Contacto de piel', 1, NULL, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (15, 3, 1, N'Ilimitadas', 1, NULL, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (37, 3, 2, N'Máximo dos', 0, NULL, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (39, 3, 3, N'Tres', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (40, 3, 4, N'No existen las ETS', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (41, 4, 1, N'Nunca. Se pueden contraer durante toda la vida.', 1, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (42, 4, 2, N'Después de los 60 años.', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (43, 4, 3, N'Después de los 80 años', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (44, 4, 4, N'Depende de la facha', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (45, 5, 1, N'Una vez por día', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (46, 5, 2, N'Dos veces por día', 0, NULL, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (47, 5, 3, N'La higiene no será una manera de prevenir las ETS', 1, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (48, 5, 4, N'No importa, todos morimos al final del camino', 1, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (51, 6, 1, N'Falso, las parejas estables no están libres de ETS', 1, NULL, 4)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (52, 6, 2, N'De los cuernos y del SIDA nadie se puede salvar ', 1, NULL, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (53, 6, 3, N'Verdadero', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (54, 6, 4, N'Son consecuentemente proporcionales', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (56, 7, 1, N'Verdadero', 1, NULL, 6)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (57, 7, 2, N'Falso', 0, NULL, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (58, 8, 1, N'376 Millones', 1, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (59, 8, 2, N'204 Millones', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (61, 8, 3, N'527 Millones', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (63, 8, 4, N'2 personas', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (64, 9, 1, N'Verdadero', 1, NULL, 5)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (65, 9, 2, N'Falso', 0, NULL, 5)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (66, 10, 1, N'Marihuana', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (67, 10, 2, N'Té de manzanilla', 0, NULL, 4)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (68, 10, 3, N'Pautas de antibióticos', 1, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (69, 10, 4, N'Inyecciones ', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (71, 11, 1, N'La Sífilis puede provocar el VIH', 1, NULL, 5)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (72, 11, 2, N'La Clamidia Puede provocar Hepatitis', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (73, 11, 3, N'El Herpes puede Provocar HIV
', 1, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (74, 11, 4, N'La gonorrea puede provocar la catarata del niágara', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (76, 12, 1, N'700.000', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (77, 12, 2, N'930.000', 0, NULL, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (78, 12, 3, N'403.000', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (79, 12, 4, N'820.000', 1, NULL, 5)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (81, 13, 1, N'Clamidia', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (82, 13, 2, N'Sida ', 1, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (83, 13, 3, N'Herpes', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (84, 13, 4, N'Hepatitis ', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (85, 14, 1, N'Magic Johnson', 1, NULL, 9)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (86, 14, 2, N'Ozuna', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (88, 14, 3, N'Peter Crouch', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (89, 14, 4, N'Juan Roman Riquelme', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (90, 15, 1, N'Hepatitis B', 0, NULL, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (91, 15, 2, N'Hepatitis A', 0, NULL, 4)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (92, 15, 3, N'Hepatitis T', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (93, 15, 4, N'Hepatitis C', 1, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (94, 16, 1, N'Herpes 1', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (95, 16, 2, N'Herpes 2', 0, NULL, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (96, 16, 3, N'Gonorrea', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (97, 16, 4, N'Clamidia', 1, NULL, 4)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (98, 17, 1, N'Verdadero', 1, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (99, 17, 2, N'Falso', 0, NULL, 6)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (101, 18, 1, N'Transfusión de sangre', 1, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (102, 18, 2, N'Mediante sexo', 0, NULL, 6)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (103, 18, 3, N'Contacto de piel', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (104, 18, 4, N'Saliba', 0, NULL, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (105, 19, 1, N'Verdadero ', 1, NULL, 4)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (106, 19, 2, N'Falso', 0, NULL, 8)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (107, 20, 1, N'Usar Condón', 1, NULL, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (108, 20, 2, N'Tomar Pastillas de vitamina C', 0, NULL, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (109, 20, 3, N'No hay', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (110, 20, 4, N'No tener Sexo', 1, NULL, 21)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (111, 22, 1, N'75%', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (112, 22, 2, N'80%', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (114, 22, 3, N'9/12/2018%', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (116, 22, 4, N'90%', 1, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (117, 23, 1, N'Falso', 1, NULL, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (118, 23, 2, N'Verdadero', 0, NULL, 18)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (119, 24, 1, N'Uso de drogas inyectadas', 1, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (120, 24, 2, N'Tomar Sol', 0, NULL, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (121, 24, 3, N'Convivir con alguien que tiene una ETS', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (123, 24, 4, N'Jugar al blackjack dormido', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (125, 25, 1, N'Verdadero', 1, NULL, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (126, 25, 2, N'Falso', 0, NULL, 1)
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
ALTER TABLE [dbo].[Respuestas]  WITH CHECK ADD  CONSTRAINT [FK_Respuestas_Preguntas] FOREIGN KEY([IdPregunta])
REFERENCES [dbo].[Preguntas] ([IdPregunta])
GO
ALTER TABLE [dbo].[Respuestas] CHECK CONSTRAINT [FK_Respuestas_Preguntas]
GO
