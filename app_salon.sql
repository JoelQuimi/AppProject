CREATE TABLE usuarios (
    id INT(11) NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(60) NOT NULL,
    apellido VARCHAR(60) NOT NULL,
    email VARCHAR(30) NOT NULL,
    password VARCHAR(60) NOT NULL,
    telefono VARCHAR(10) NOT NULL,
    admin TINYINT(1) DEFAULT 0,
    confirmado TINYINT(1) DEFAULT 0,
    token VARCHAR(15),
    PRIMARY KEY (id)
);

CREATE TABLE servicios (
    id INT(11) NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(60) NOT NULL,
    precio DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO `servicios` (`id`, `nombre`, `precio`) VALUES
(1, 'Corte de Cabello Mujer ACTUALIZADO', 120.00),
(2, 'Corte de Cabello Hombre', 80.00),
(3, 'Corte de Cabello Niño', 60.00),
(4, 'Peinado Mujer', 80.00),
(5, 'Peinado Hombre', 60.00),
(6, 'Peinado Niño', 60.00),
(7, 'Corte de Barba', 60.00),
(8, 'Tinte Mujer', 300.00),
(9, 'Uñas', 400.00),
(10, 'Lavado de Cabello', 50.00),
(11, 'Tratamiento Capilar', 150.00);



CREATE TABLE citas (
    id INT(11) NOT NULL AUTO_INCREMENT,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    usuarioId INT(11) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (usuarioId) REFERENCES usuarios(id) ON DELETE CASCADE
);

CREATE TABLE `citasServicios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `citaId` INT NOT NULL,
  `servicioId` INT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `citaId` (`citaId`),
  KEY `servicioId` (`servicioId`),
  CONSTRAINT `citasServicios_ibfk_1` FOREIGN KEY (`citaId`) REFERENCES `citas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `citasServicios_ibfk_2` FOREIGN KEY (`servicioId`) REFERENCES `servicios` (`id`) ON DELETE CASCADE
)


select * from b6ihkyftwac2plxe6gqw.usuarios


