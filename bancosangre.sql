 -- Creamos la tabla de Estados
CREATE TABLE Estado (
    id_estado INT PRIMARY KEY,
    descripcion VARCHAR(50)
);

-- Creamos la tabla de Donantes
CREATE TABLE Donante (
    dni INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    id_estado INT,
    FOREIGN KEY (id_estado) REFERENCES Estado(id_estado)
);

-- Cargamos datos para que no esté vacía
INSERT INTO Estado (id_estado, descripcion) VALUES 
(1, 'Apto'), 
(2, 'Pendiente');

INSERT INTO Donante (dni, nombre, apellido, id_estado) VALUES 
(12345678, 'Geraldine', 'Ingeniera', 1),
(87654321, 'Juan', 'Perez', 2);
