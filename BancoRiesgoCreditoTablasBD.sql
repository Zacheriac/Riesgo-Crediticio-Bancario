CREATE DATABASE BancoRiesgoCredito;
GO
USE BancoRiesgoCredito;
GO

-- ─────────────────────────────────────────
-- ELIMINAR TABLAS EN ORDEN
-- ─────────────────────────────────────────
DROP TABLE IF EXISTS HistorialCredito;
DROP TABLE IF EXISTS Pagos;
DROP TABLE IF EXISTS Prestamos;
DROP TABLE IF EXISTS Clientes;
DROP TABLE IF EXISTS Sucursales;

-- ─────────────────────────────────────────
-- TABLA 1: SUCURSALES
-- ─────────────────────────────────────────
CREATE TABLE Sucursales (
    id_sucursal  INT PRIMARY KEY IDENTITY(1,1),
    nombre       VARCHAR(100),
    distrito     VARCHAR(50),
    provincia    VARCHAR(50)
);

-- ─────────────────────────────────────────
-- TABLA 2: CLIENTES
-- ─────────────────────────────────────────
CREATE TABLE Clientes (
    id_cliente         INT PRIMARY KEY IDENTITY(1,1),
    nombre             VARCHAR(50)  NOT NULL,
    apellido_paterno   VARCHAR(50)  NOT NULL,
    apellido_materno   VARCHAR(50)  NOT NULL,
    dni                VARCHAR(8)   UNIQUE NOT NULL,
    fecha_nacimiento   DATE         NOT NULL,  -- reemplaza edad
	genero             VARCHAR(10)   CHECK (genero IN ('Masculino','Femenino')),
    correo             VARCHAR(100) UNIQUE,     -- correo también debe ser único
    telefono           VARCHAR(9),              -- agregamos teléfono
    salario            DECIMAL(10,2),
    direccion          VARCHAR(150),
    distrito           VARCHAR(50),
    estado_civil       VARCHAR(20)  CHECK (estado_civil IN ('Soltero','Casado','Divorciado','Viudo','Conviviente')),
    score_crediticio   INT          CHECK (score_crediticio BETWEEN 300 AND 850), -- Es un puntaje que mide qué tan buen pagador eres. En Perú lo maneja Infocorp
    empleo             VARCHAR(50),
    nivel_educacion    VARCHAR(30) CHECK (nivel_educacion IN (
    'Sin instruccion',
    'Primaria',
    'Secundaria',
    'Superior tecnica',
    'Superior universitaria',
    'Posgrado')),
    tipo_contrato      VARCHAR(30) CHECK (tipo_contrato IN (
    'Plazo indefinido',      -- contrato permanente
    'Plazo fijo',            -- contrato temporal con fecha fin
    'Por locacion',          -- honorarios / recibos por honorarios
    'Independiente',         -- negocio propio / RUC
    'Practicante')),            -- convenio de practicas
    antiguedad_laboral INT,
    empresa_actual     VARCHAR(100),
    id_sucursal        INT FOREIGN KEY REFERENCES Sucursales(id_sucursal),
    fecha_registro     DATE DEFAULT GETDATE()
);

-- ─────────────────────────────────────────
-- TABLA 3: PRESTAMOS
-- ─────────────────────────────────────────
CREATE TABLE Prestamos (
    id_prestamo        INT PRIMARY KEY IDENTITY(1,1),
    id_cliente         INT          NOT NULL FOREIGN KEY REFERENCES Clientes(id_cliente),
    tipo_prestamo      VARCHAR(30)  CHECK (tipo_prestamo IN ('Personal','Hipotecario','Vehicular','Empresarial','Consumo','Tarjeta')),
    monto              DECIMAL(10,2),
    monto_aprobado     DECIMAL(10,2),
    tasa_interes       DECIMAL(5,2),
    plazo_meses        INT,
    cuota_mensual      DECIMAL(10,2),
    fecha_inicio       DATE,
    fecha_vencimiento  DATE,
    estado_prestamo    VARCHAR(20)  CHECK (estado_prestamo IN ('Activo','Cancelado','Mora','Refinanciado','Castigado'))
);

-- ─────────────────────────────────────────
-- TABLA 4: PAGOS
-- ─────────────────────────────────────────
CREATE TABLE Pagos (
    id_pago        INT PRIMARY KEY IDENTITY(1,1),
    id_prestamo    INT NOT NULL FOREIGN KEY REFERENCES Prestamos(id_prestamo),
    numero_cuota   INT,
    fecha_pago     DATE,
    monto_pagado   DECIMAL(10,2),
    dias_retraso   INT DEFAULT 0,   -- agregamos días de retraso
    estado_pago    VARCHAR(20) CHECK (estado_pago IN ('Puntual','Tardio','No pagado'))
);

-- ─────────────────────────────────────────
-- TABLA 5: HISTORIAL CREDITICIO
-- ─────────────────────────────────────────
CREATE TABLE HistorialCredito (
    id_historial         INT PRIMARY KEY IDENTITY(1,1),
    id_cliente           INT NOT NULL FOREIGN KEY REFERENCES Clientes(id_cliente),
    meses_sin_pagar      INT         DEFAULT 0,
    deudas_anteriores    DECIMAL(10,2)DEFAULT 0, 
    veces_reestructurado INT         DEFAULT 0,
    atrasos_ultimos_12m  INT         DEFAULT 0,
    dias_max_mora        INT         DEFAULT 0,
    default_previo       BIT         DEFAULT 0  -- 0=No tuvo mora grave, 1=Si tuvo
);

SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_TYPE = 'BASE TABLE';