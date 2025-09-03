USE LogisticaFeria;

INSERT INTO feria VALUES
(1, "Feria Internacional de la Tecnologia", "Medellín, Antioquia", "2025-08-08", "2025-08-15");

INSERT INTO empresa VALUES
(1, "UtraHuilca"),
(2, "Amazon"),
(3, "Infotec");

INSERT INTO pabellon VALUES
(1, 4, "Créditos"),
(2, 3, "Educativo"),
(3, 5, "Informátivo");

INSERT INTO responsable VALUES
(1, "Joseph Alvarez"),
(2, "Juan Bahamon"),
(3, "Javier Contreras"),
(4, "Marlon Yucumá"),
(5, "Carolina Montero");

INSERT INTO visitante VALUES
(1, "Pablo Trujillo", "pablo.trujillo@gmail.com", "En línea"),
(2, "Juan Duarte", "juan.duarte@gmail.com", "Presencialmente"),
(3, "Oscar Córdoba", "oscar.cordoba@gmail.com", "Presencialmente"),
(4, "Ana Montenegro", "ana_montenegro1@gmail.com", "En línea"),
(5, "Johan Cruz", "johan.cruz5@gmail.com", "Presencialmente");

INSERT INTO ponente VALUES
(1, "Abraham Toledo", "abraham.toledo@hotmail.com"),
(2, "Monica Garzón", "monica.garzon12@gmail.com"),
(3, "David Pinzón", "davidpinzon13@hotmail.com");

INSERT INTO reportes VALUES
(1, "Aseo", "Mal aseado."),
(2, "Organización", "Pésima organización"),
(3, "Logistica", "El sonido no funcionó del todo bien.");

INSERT INTO productos VALUES
(1, 1, "Alcancía en forma de portátil"),
(2, 3, "Camiseta de marca Infotec"),
(3, 2, "Gorra de marca Utrahuilca"),
(4, 5, "Camiseta de marca Amazon"),
(5, 4, "Mouse genérico marca Lenovo");

INSERT INTO stand VALUES
(1, 1, 1, 1, "Incentivar el ahorro."),
(2, 1, 1, 3, "Incentivar el ahorro."),
(3, 3, 2, 4, "Informar sobre nuestro negocio."),
(4, 3, 2, 5, "Informar sobre nuestro negocio y ayudar a los visitantes."),
(5, 3, 3, 2, "Promover el estudio.");

INSERT INTO charlas VALUES
(1, "Ahorra para tus estudios.", 1, 1),
(2, "El ahorro es el futuro.", 2, 1),
(3, "Los mejores programas educativos.", 3, 3);

INSERT INTO registro VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 1),
(3, 1),
(4, 2),
(4, 3),
(5, 2);