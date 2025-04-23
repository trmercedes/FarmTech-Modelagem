
-- Tabelas de Sensores, Plantação e Ajustes

CREATE TABLE Sensores (
    id_sensor INT PRIMARY KEY,
    tipo_sensor VARCHAR(50),
    valor DECIMAL(10, 2),
    data_ajuste DATE
);

CREATE TABLE Plantacoes (
    id_plantacao INT PRIMARY KEY,
    tipo_cultura VARCHAR(50),
    localizacao VARCHAR(100)
);

CREATE TABLE Ajustes (
    id_ajuste INT PRIMARY KEY,
    id_sensor INT,
    tipo_ajuste VARCHAR(50),
    quantidade_agua DECIMAL(10, 2),
    data_ajuste DATE,
    FOREIGN KEY (id_sensor) REFERENCES Sensores(id_sensor)
);
