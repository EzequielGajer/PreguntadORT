USE [PreguntadOrt]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 17/8/2023 15:59:36 ******/
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
/****** Object:  Table [dbo].[Dificultades]    Script Date: 17/8/2023 15:59:36 ******/
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
/****** Object:  Table [dbo].[Preguntas]    Script Date: 17/8/2023 15:59:36 ******/
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
/****** Object:  Table [dbo].[Puntajes]    Script Date: 17/8/2023 15:59:36 ******/
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
/****** Object:  Table [dbo].[Respuestas]    Script Date: 17/8/2023 15:59:36 ******/
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
INSERT [dbo].[Preguntas] ([IdPregunta], [IdCategoria], [IdDificultad], [Enunciado], [Foto]) VALUES (19, 1, 1, N'¿En cual de estos cluber NO jugó Cristiano Ronaldo?', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHAmT0qw4g44w4I6UI_C0GJ-sRF3iIsOWH7OubM-Ixhd4Tg_D2Fpbq_p9HhvUxnToH5M8&usqp=CAU')
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
SET IDENTITY_INSERT [dbo].[Preguntas] OFF
GO
SET IDENTITY_INSERT [dbo].[Respuestas] ON 

INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (1, 1, 1, N'Cristiano Ronaldo', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (2, 1, 2, N'Lionel Messi', 1, NULL, 5)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (7, 1, 3, N'Lionel Mesi', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (8, 1, 4, N'Diego Maradona', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (10, 2, 1, N'Trueno', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (11, 2, 2, N'Duki', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (13, 2, 3, N'Chano', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (14, 2, 4, N'Wos', 1, NULL, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (15, 3, 1, N'Intercontinental', 1, NULL, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (37, 3, 2, N'Internacional', 0, NULL, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (39, 3, 3, N'Copa del mundo', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (40, 3, 4, N'Mundial de Clubes', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (41, 4, 1, N'1', 1, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (42, 4, 2, N'2', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (43, 4, 3, N'0', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (44, 4, 4, N'3', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (45, 5, 1, N'1', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (46, 5, 2, N'2', 0, NULL, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (47, 5, 3, N'3', 1, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (48, 5, 4, N'Ninguna', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (51, 6, 1, N'78/79 - 80/81', 0, NULL, 4)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (52, 6, 2, N'78/79 - 79/80', 1, NULL, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (53, 6, 3, N'80/81 - 81/82', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (54, 6, 4, N'78/79 - 81/82', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (56, 7, 1, N'Belgrano', 1, NULL, 6)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (57, 7, 2, N'San Martin', 0, NULL, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (58, 8, 1, N'1492', 1, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (59, 8, 2, N'1521', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (61, 8, 3, N'1942', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (63, 8, 4, N'1776', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (64, 9, 1, N'1943', 1, NULL, 5)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (65, 9, 2, N'1930', 0, NULL, 5)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (66, 10, 1, N'Alemania, Estados Unidos y Francia', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (67, 10, 2, N'Francia, Reino Unido y Rusia', 0, NULL, 4)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (68, 10, 3, N'Alemania, Italia y el Imperio Austro-Húngaro', 1, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (69, 10, 4, N'Reino Unido, Francia y Japón', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (71, 11, 1, N'Joseph Goebbels', 1, NULL, 5)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (72, 11, 2, N'Heinrich Himmler', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (73, 11, 3, N'Josef Mengele', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (74, 11, 4, N'Adolf Hitler', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (76, 12, 1, N'Quechua', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (77, 12, 2, N'Español', 0, NULL, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (78, 12, 3, N'Aymara', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (79, 12, 4, N'Náhuatl', 1, NULL, 5)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (81, 13, 1, N'100', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (82, 13, 2, N'110', 1, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (83, 13, 3, N'120', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (84, 13, 4, N'101', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (85, 14, 1, N'5', 1, NULL, 9)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (86, 14, 2, N'25', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (88, 14, 3, N'15', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (89, 14, 4, N'No tiene', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (90, 15, 1, N'Lateral Izquierdo', 0, NULL, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (91, 15, 2, N'Sodio', 0, NULL, 4)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (92, 15, 3, N'Hierro', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (93, 15, 4, N'Litio', 1, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (94, 16, 1, N'La transferencia de energia entre cuerpos', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (95, 16, 2, N'Nada', 0, NULL, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (96, 16, 3, N'Todo lo que refleja', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (97, 16, 4, N'Todo lo que ocupa un lugar en el espacio', 1, NULL, 4)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (98, 17, 1, N'12', 1, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (99, 17, 2, N'13', 0, NULL, 6)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (101, 18, 1, N'Congelado, acuoso, vapor', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (102, 18, 2, N'Átomo, molécula, compuesto', 0, NULL, 6)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (103, 18, 3, N'Gaseoso, líquido, sólido', 1, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (104, 18, 4, N'Homogéneo y heterogéneo', 0, NULL, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (105, 19, 1, N'SC Braga', 1, NULL, 4)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (106, 19, 2, N'Sporting de Lisboa', 0, NULL, 8)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (107, 20, 1, N'Tratame Suavemente', 1, NULL, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (108, 20, 2, N'A las Nueve', 0, NULL, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (109, 20, 3, N'Flaca', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (110, 20, 4, N'Cuando no Estás', 1, NULL, 21)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (111, 22, 1, N'Michael Jackson', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (112, 22, 2, N'Maradona', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (114, 22, 3, N'Taylor Swift', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (116, 22, 4, N'Madonna', 1, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (117, 23, 1, N'Falso', 1, NULL, 3)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (118, 23, 2, N'Verdadero', 0, NULL, 18)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (119, 24, 1, N'Shaggy', 1, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (120, 24, 2, N'Sheryl Crow', 0, NULL, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (121, 24, 3, N'Bruce Springsteen', 0, NULL, 0)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (123, 24, 4, N'Ninguna es correcta', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (125, 25, 1, N'Billie Jean', 1, NULL, 2)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (126, 25, 2, N'Thriller', 0, NULL, 1)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (127, 25, 3, N'Beat it', 0, NULL, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (128, 26, 1, N'America Central', 0, NULL, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (129, 26, 2, N'America del Norte', 0, NULL, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (130, 26, 3, N'America del Sur', 1, NULL, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (131, 26, 4, N'Africa', 0, NULL, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (134, 28, 1, N'No tiene tierra propia', 0, NULL, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (135, 28, 2, N'Europa', 1, NULL, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (136, 28, 3, N'America Central', 0, NULL, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (139, 30, 1, N'Rio de Janeiro', 0, NULL, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (140, 30, 2, N'Brasilia', 1, NULL, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (141, 30, 3, N'Goias', 0, NULL, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (142, 30, 4, N'Sao Paulo', 0, NULL, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (143, 31, 1, N'New York', 0, NULL, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (144, 31, 2, N'Florida', 0, NULL, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (146, 31, 3, N'Michigan', 0, NULL, NULL)
GO
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (147, 31, 4, N'Washington D. C.', 1, NULL, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (148, 32, 1, N'No existe', 0, NULL, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (149, 32, 2, N'Asia', 1, NULL, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (150, 32, 3, N'Africa', 0, NULL, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (151, 32, 4, N'Europa', 0, NULL, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (152, 33, 1, N'Rusia', 1, NULL, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (153, 33, 2, N'Reino Unido', 0, NULL, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (155, 33, 3, N'Alemania', 0, NULL, NULL)
INSERT [dbo].[Respuestas] ([IdRespuesta], [IdPregunta], [Opcion], [Contenido], [Correcta], [Foto], [ContadorSeleccionada]) VALUES (156, 33, 4, N'China', 0, NULL, NULL)
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
/****** Object:  StoredProcedure [dbo].[sp_Listar_Categorias]    Script Date: 17/8/2023 15:59:36 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Listar_Dificultades]    Script Date: 17/8/2023 15:59:36 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Mostrar_Pregunta_y_Categoria_Seleccionada]    Script Date: 17/8/2023 15:59:36 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Mostrar_Preguntas]    Script Date: 17/8/2023 15:59:36 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Mostrar_Una_Categoria]    Script Date: 17/8/2023 15:59:36 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Mostrar_Una_Dificultad]    Script Date: 17/8/2023 15:59:36 ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Obtener_Respuesta]    Script Date: 17/8/2023 15:59:36 ******/
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
