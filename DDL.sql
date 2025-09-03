CREATE DATABASE LogisticaFeria;
USE LogisticaFeria;

CREATE TABLE feria (
  id INT PRIMARY KEY,
  nombre VARCHAR(200),
  ciudad VARCHAR(50),
  fechaInicio DATE,
  fechaFin DATE
);

CREATE TABLE empresa (
  id INT PRIMARY KEY,
  nombre VARCHAR(150) NOT NULL
);

CREATE TABLE pabellon (
  id INT PRIMARY KEY,
  limiteStands INT NOT NULL,
  tematica VARCHAR(20)
);

CREATE TABLE responsable (
  id INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL 
);

CREATE TABLE visitante (
  id INT PRIMARY KEY,
  nombre VARCHAR(100),
  email VARCHAR(120),
  tipoEntrada VARCHAR(20)
);

CREATE TABLE ponente (
  id INT PRIMARY KEY,
  nombre VARCHAR(100),
  email VARCHAR(120)
);

CREATE TABLE reportes (
  id INT PRIMARY KEY,
  tipo VARCHAR(20),
  reporte VARCHAR(120)
);

CREATE TABLE productos (
  id INT PRIMARY KEY,
  idResponsable INT,
  nombre VARCHAR(50),
  FOREIGN KEY (idResponsable) REFERENCES Responsable(id)
);

CREATE TABLE stand (
  id INT PRIMARY KEY,
  idPabellon INT,
  idEmpresa INT,
  idProductos INT,
  proposito VARCHAR(200),
  FOREIGN KEY (idPabellon) REFERENCES pabellon(id),
  FOREIGN KEY (idEmpresa) REFERENCES empresa(id),
  FOREIGN KEY (idProductos) REFERENCES productos(id)
);

CREATE TABLE charlas (
  id INT PRIMARY KEY,
  nombre VARCHAR(80) NOT NULL,
  idPonente INT,
  idEmpresa INT,
  FOREIGN KEY (idPonente) REFERENCES ponente(id),
  FOREIGN KEY (idEmpresa) REFERENCES empresa(id)
);

CREATE TABLE registro (
  idVisitante INT,
  idCharlas INT,
  FOREIGN KEY (idVisitante) REFERENCES visitante(id),
  FOREIGN KEY (idCharlas) REFERENCES charlas(id)
);