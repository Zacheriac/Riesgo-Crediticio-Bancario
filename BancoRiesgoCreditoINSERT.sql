USE BancoRiesgoCredito;
GO

-- ─────────────────────────────────────────
-- INSERTAR SUCURSALES
-- ─────────────────────────────────────────
INSERT INTO Sucursales (nombre, distrito, provincia) VALUES
('Sucursal Miraflores',  'Miraflores',  'Lima'),
('Sucursal San Isidro',  'San Isidro',  'Lima'),
('Sucursal San Borja',   'San Borja',   'Lima'),
('Sucursal Surco',       'Surco',       'Lima'),
('Sucursal Callao',      'Callao',      'Callao'),
('Sucursal Trujillo',    'Trujillo',    'La Libertad'),
('Sucursal Arequipa',    'Arequipa',    'Arequipa'),
('Sucursal Cusco',       'Cusco',       'Cusco'),
('Sucursal Piura',       'Piura',       'Piura'),
('Sucursal Chiclayo',    'Chiclayo',    'Lambayeque');

INSERT INTO Sucursales (nombre, distrito, provincia)
VALUES ('Sucursal Juliaca', 'Juliaca', 'Puno');

SELECT * FROM Sucursales;

USE BancoRiesgoCredito;
GO

INSERT INTO Clientes (nombre, apellido_paterno, apellido_materno, dni, fecha_nacimiento, genero, correo, telefono, salario, direccion, distrito, estado_civil, score_crediticio, empleo, nivel_educacion, tipo_contrato, antiguedad_laboral, empresa_actual, id_sucursal) VALUES
('Carlos',    'Quispe',     'Mamani',   '12345678', '1989-03-15', 'Masculino', 'carlos.quispe@gmail.com',     '987654321', 3500.00, 'Av. Arequipa 123',       'Miraflores', 'Casado',      720, 'Ingeniero',          'Superior universitaria', 'Plazo indefinido', 5,  'BCP',                1),
('Maria',     'Torres',     'Lopez',    '23456789', '1996-07-22', 'Femenino',  'maria.torres@gmail.com',      '976543210', 2800.00, 'Jr. Cusco 456',          'San Isidro', 'Soltero',     650, 'Contadora',          'Superior universitaria', 'Plazo indefinido', 3,  'Interbank',          2),
('Jose',      'Flores',     'Garcia',   '34567890', '1979-11-08', 'Masculino', 'jose.flores@gmail.com',       '965432109', 5200.00, 'Calle Lima 789',         'San Borja',  'Casado',      800, 'Gerente',            'Posgrado',               'Plazo indefinido', 10, 'BBVA',               3),
('Ana',       'Huanca',     'Condori',  '45678901', '2001-05-30', 'Femenino',  'ana.huanca@gmail.com',        '954321098', 1800.00, 'Av. Tupac 321',          'Callao',     'Soltero',     480, 'Vendedora',          'Secundaria',             'Plazo fijo',       1,  'Ripley',             5),
('Luis',      'Chavez',     'Ramos',    '56789012', '1986-09-14', 'Masculino', 'luis.chavez@gmail.com',       '943210987', 4100.00, 'Av. Brasil 654',         'Surco',      'Casado',      750, 'Administrador',      'Superior universitaria', 'Plazo indefinido', 7,  'Scotiabank',         4),
('Rosa',      'Vargas',     'Medina',   '67890123', '1993-02-18', 'Femenino',  'rosa.vargas@gmail.com',       '932109876', 2200.00, 'Jr. Puno 987',           'Trujillo',   'Soltero',     590, 'Profesora',          'Superior universitaria', 'Plazo fijo',       2,  'UGEL',               6),
('Pedro',     'Mamani',     'Quispe',   '78901234', '1972-06-25', 'Masculino', 'pedro.mamani@gmail.com',      '921098765', 6500.00, 'Av. Ejercito 147',       'Arequipa',   'Casado',      820, 'Doctor',             'Posgrado',               'Plazo indefinido', 15, 'Clinica San Pablo',  7),
('Lucia',     'Gonzales',   'Perez',    '89012345', '1998-12-03', 'Femenino',  'lucia.gonzales@gmail.com',    '910987654', 2100.00, 'Calle Cusco 258',        'Cusco',      'Soltero',     510, 'Enfermera',          'Superior tecnica',       'Plazo fijo',       1,  'Hospital Regional',  8),
('Miguel',    'Reyes',      'Castro',   '90123456', '1983-04-17', 'Masculino', 'miguel.reyes@gmail.com',      '909876543', 3800.00, 'Av. Grau 369',           'Piura',      'Casado',      690, 'Contador',           'Superior universitaria', 'Plazo indefinido', 8,  'Sunat',              9),
('Carmen',    'Diaz',       'Rojas',    '01234567', '1995-08-29', 'Femenino',  'carmen.diaz@gmail.com',       '998765432', 2500.00, 'Jr. Ayacucho 741',       'Chiclayo',   'Casado',      620, 'Abogada',            'Superior universitaria', 'Plazo indefinido', 4,  'Estudio Juridico',   10),
('Roberto',   'Salinas',    'Vega',     '11223344', '1977-01-11', 'Masculino', 'roberto.salinas@gmail.com',   '987654320', 4800.00, 'Av. Colonial 852',       'Callao',     'Casado',      770, 'Ingeniero',          'Superior universitaria', 'Plazo indefinido', 12, 'Petroperu',          5),
('Sandra',    'Mendoza',    'Ruiz',     '22334455', '1991-10-06', 'Femenino',  'sandra.mendoza@gmail.com',    '976543219', 1900.00, 'Calle Real 963',         'Trujillo',   'Soltero',     450, 'Cajera',             'Superior tecnica',       'Plazo fijo',       2,  'Plaza Vea',          6),
('Fernando',  'Cruz',       'Mora',     '33445566', '1985-03-22', 'Masculino', 'fernando.cruz@gmail.com',     '965432108', 5500.00, 'Av. Salaverry 174',      'San Isidro', 'Casado',      810, 'Arquitecto',         'Superior universitaria', 'Plazo indefinido', 9,  'Grana y Montero',    2),
('Patricia',  'Lozano',     'Silva',    '44556677', '1999-07-14', 'Femenino',  'patricia.lozano@gmail.com',   '954321097', 1700.00, 'Jr. Junin 285',          'Miraflores', 'Soltero',     430, 'Practicante',        'Superior universitaria', 'Practicante',      0,  'Deloitte',           1),
('Antonio',   'Paredes',    'Neira',    '55667788', '1969-11-30', 'Masculino', 'antonio.paredes@gmail.com',   '943210986', 7200.00, 'Av. Javier Prado 396',  'San Borja',  'Casado',      850, 'Director',           'Posgrado',               'Plazo indefinido', 20, 'Ministerio',         3),
('Gloria',    'Campos',     'Tello',    '66778899', '1988-05-19', 'Femenino',  'gloria.campos@gmail.com',     '932109875', 3100.00, 'Calle Bolognesi 417',    'Arequipa',   'Casado',      680, 'Psicologa',          'Superior universitaria', 'Plazo indefinido', 6,  'Clinica Arequipa',   7),
('Ricardo',   'Herrera',    'Espino',   '77889900', '1981-09-07', 'Masculino', 'ricardo.herrera@gmail.com',   '921098764', 4300.00, 'Av. Parra 528',          'Cusco',      'Casado',      730, 'Economista',         'Superior universitaria', 'Plazo indefinido', 11, 'Banco de la Nacion', 8),
('Valeria',   'Soto',       'Pinto',    '88990011', '2002-02-23', 'Femenino',  'valeria.soto@gmail.com',      '910987653', 1500.00, 'Jr. Libertad 639',       'Piura',      'Soltero',     400, 'Estudiante',         'Secundaria',             'Plazo fijo',       0,  'Part-time',          9),
('Jorge',     'Villanueva', 'Castillo', '99001122', '1976-06-12', 'Masculino', 'jorge.villanueva@gmail.com',  '909876542', 5900.00, 'Av. Mansiche 740',       'Trujillo',   'Casado',      790, 'Empresario',         'Superior universitaria', 'Independiente',    14, 'Empresa Propia',     6),
('Elizabeth', 'Ramos',      'Huaman',   '10111213', '1994-12-28', 'Femenino',  'elizabeth.ramos@gmail.com',   '998765431', 2700.00, 'Calle Ugarte 851',       'Chiclayo',   'Conviviente', 560, 'Disenadora',         'Superior tecnica',       'Plazo indefinido', 3,  'Agencia Creativa',   10),
('Marco',     'Rios',       'Paredes',  '13243546', '1990-04-12', 'Masculino', 'marco.rios@gmail.com',        '981234567', 3200.00, 'Av. Universitaria 234',  'San Isidro', 'Soltero',     610, 'Analista',           'Superior universitaria', 'Plazo indefinido', 4,  'Rimac Seguros',      2),
('Diana',     'Castillo',   'Fuentes',  '24354657', '1987-08-23', 'Femenino',  'diana.castillo@gmail.com',    '972345678', 4500.00, 'Jr. Amazonas 567',       'Miraflores', 'Casado',      760, 'Auditora',           'Posgrado',               'Plazo indefinido', 8,  'Ernst & Young',      1),
('Andres',    'Morales',    'Cano',     '35465768', '2000-01-17', 'Masculino', 'andres.morales@gmail.com',    '963456789', 1600.00, 'Calle Tacna 890',        'Callao',     'Soltero',     420, 'Tecnico',            'Superior tecnica',       'Plazo fijo',       1,  'Tottus',             5),
('Gabriela',  'Espinoza',   'Luna',     '46576879', '1984-06-09', 'Femenino',  'gabriela.espinoza@gmail.com', '954567890', 5800.00, 'Av. Reducto 123',        'Surco',      'Casado',      830, 'Directora',          'Posgrado',               'Plazo indefinido', 12, 'Ministerio Salud',   4),
('Hector',    'Palomino',   'Torres',   '57687980', '1993-10-31', 'Masculino', 'hector.palomino@gmail.com',   '945678901', 2900.00, 'Jr. Huallaga 456',       'Trujillo',   'Conviviente', 580, 'Tecnico IT',         'Superior tecnica',       'Plazo indefinido', 3,  'Claro Peru',         6),
('Silvia',    'Gutierrez',  'Ponce',    '68798091', '1978-02-14', 'Femenino',  'silvia.gutierrez@gmail.com',  '936789012', 6200.00, 'Av. Larco 789',          'Miraflores', 'Casado',      800, 'Gerente',            'Posgrado',               'Plazo indefinido', 14, 'Alicorp',            1),
('Kevin',     'Bermudez',   'Salas',    '79809102', '2001-09-05', 'Masculino', 'kevin.bermudez@gmail.com',    '927890123', 1400.00, 'Calle Piura 321',        'Piura',      'Soltero',     380, 'Practicante',        'Superior universitaria', 'Practicante',      0,  'Banco Nacion',       9),
('Natalia',   'Figueroa',   'Vera',     '80910213', '1992-12-19', 'Femenino',  'natalia.figueroa@gmail.com',  '918901234', 3600.00, 'Av. Benavides 654',      'Surco',      'Soltero',     700, 'Ingeniera',          'Superior universitaria', 'Plazo indefinido', 6,  'Entel',              4),
('Cesar',     'Montoya',    'Aguilar',  '91021324', '1975-07-28', 'Masculino', 'cesar.montoya@gmail.com',     '909012345', 7800.00, 'Jr. Carabaya 987',       'San Borja',  'Casado',      840, 'Empresario',         'Posgrado',               'Independiente',    18, 'Empresa Propia',     3),
('Paola',     'Ramirez',    'Delgado',  '02132435', '1997-03-06', 'Femenino',  'paola.ramirez@gmail.com',     '990123456', 2300.00, 'Av. Tacna 147',          'Chiclayo',   'Soltero',     540, 'Asistente',          'Superior universitaria', 'Plazo fijo',       2,  'Cencosud',           10),
('Manuel',    'Valdivia',   'Ortega',   '14253647', '1982-11-22', 'Masculino', 'manuel.valdivia@gmail.com',   '981234560', 4600.00, 'Calle Arequipa 258',     'Arequipa',   'Casado',      740, 'Supervisor',         'Superior universitaria', 'Plazo indefinido', 9,  'Southern Peru',      7),
('Claudia',   'Pereira',    'Meza',     '25364758', '1995-05-11', 'Femenino',  'claudia.pereira@gmail.com',   '972345671', 2600.00, 'Jr. Independencia 369', 'Cusco',      'Conviviente', 600, 'Enfermera',          'Superior tecnica',       'Plazo fijo',       3,  'EsSalud',            8),
('Rodrigo',   'Alvarado',   'Benites',  '36475869', '1988-09-04', 'Masculino', 'rodrigo.alvarado@gmail.com',  '963456782', 5100.00, 'Av. Primavera 741',      'San Isidro', 'Casado',      780, 'Consultor',          'Posgrado',               'Por locacion',     7,  'Independiente',      2),
('Milagros',  'Carrasco',   'Ibarra',   '47586970', '1999-01-26', 'Femenino',  'milagros.carrasco@gmail.com', '954567893', 1800.00, 'Calle Loreto 852',       'Trujillo',   'Soltero',     460, 'Vendedora',          'Secundaria',             'Plazo fijo',       1,  'Saga Falabella',     6),
('Eduardo',   'Pacheco',    'Solis',    '58697081', '1973-06-15', 'Masculino', 'eduardo.pacheco@gmail.com',   '945678904', 8500.00, 'Av. El Sol 963',         'Cusco',      'Casado',      850, 'Director',           'Posgrado',               'Plazo indefinido', 22, 'Gobierno Regional',  8),
('Fiorella',  'Navarro',    'Cisneros', '69708192', '1991-10-08', 'Femenino',  'fiorella.navarro@gmail.com',  '936789015', 3300.00, 'Jr. Ucayali 174',        'Callao',     'Casado',      660, 'Contadora',          'Superior universitaria', 'Plazo indefinido', 5,  'Sunat',              5),
('Sebastian', 'Coronado',   'Polo',     '70819203', '2003-04-20', 'Masculino', 'sebastian.coronado@gmail.com','927890126', 1200.00, 'Av. Venezuela 285',      'Piura',      'Soltero',     350, 'Estudiante',         'Secundaria',             'Plazo fijo',       0,  'Part-time',          9),
('Karina',    'Bautista',   'Uribe',    '81920314', '1986-08-13', 'Femenino',  'karina.bautista@gmail.com',   '918901237', 4200.00, 'Calle Moquegua 396',     'Arequipa',   'Divorciado',  710, 'Administradora',     'Superior universitaria', 'Plazo indefinido', 8,  'Yura SA',            7),
('Ernesto',   'Vasquez',    'Tapia',    '92031425', '1980-12-02', 'Masculino', 'ernesto.vasquez@gmail.com',   '909012348', 5400.00, 'Av. Angamos 417',        'Surco',      'Casado',      760, 'Ingeniero',          'Superior universitaria', 'Plazo indefinido', 11, 'Grana y Montero',    4),
('Roxana',    'Mendez',     'Choque',   '03142536', '1994-03-29', 'Femenino',  'roxana.mendez@gmail.com',     '990123459', 2400.00, 'Jr. Chanchamayo 528',    'Chiclayo',   'Conviviente', 570, 'Tecnica',            'Superior tecnica',       'Plazo fijo',       3,  'Electronorte',       10),
('Giancarlo', 'Quispe',     'Huanca',   '15263748', '1989-07-16', 'Masculino', 'giancarlo.quispe@gmail.com',  '981234563', 3700.00, 'Av. Tupac Amaru 639',    'San Borja',  'Casado',      720, 'Programador',        'Superior universitaria', 'Plazo indefinido', 6,  'Indra',              3),
('Vanessa',   'Lazo',       'Cornejo',  '26374859', '1996-11-09', 'Femenino',  'vanessa.lazo@gmail.com',      '972345674', 2100.00, 'Calle Parinacochas 740', 'Miraflores', 'Soltero',     490, 'Asistente Social',   'Superior universitaria', 'Plazo fijo',       2,  'Municipalidad',      1),
('Arturo',    'Condori',    'Apaza',    '37485960', '1971-05-03', 'Masculino', 'arturo.condori@gmail.com',    '963456785', 6800.00, 'Av. Cultura 851',        'Cusco',      'Casado',      810, 'Medico',             'Posgrado',               'Plazo indefinido', 16, 'Hospital Lorena',    8),
('Stephanie', 'Huaman',     'Ccasa',    '48596071', '2000-09-25', 'Femenino',  'stephanie.huaman@gmail.com',  '954567896', 1900.00, 'Jr. Pumacahua 962',      'Arequipa',   'Soltero',     440, 'Tecnica Enfermeria', 'Superior tecnica',       'Plazo fijo',       1,  'Clinica Arequipa',   7),
('Wilmer',    'Ccallo',     'Mamani',   '59607182', '1983-02-17', 'Masculino', 'wilmer.ccallo@gmail.com',     '945678907', 4900.00, 'Av. Ferroviaria 173',    'Juliaca',    'Casado',      690, 'Comerciante',        'Secundaria',             'Independiente',    10, 'Empresa Propia',     8);

UPDATE Clientes
SET id_sucursal = 11
WHERE dni = '59607182';
-- Verificar
SELECT 
    id_cliente,
    dni,
    nombre + ' ' + apellido_paterno + ' ' + apellido_materno AS nombre_completo,
    genero,
    DATEDIFF(YEAR, fecha_nacimiento, GETDATE()) AS edad,
    estado_civil,
    score_crediticio,
    salario
FROM Clientes
ORDER BY id_cliente;

SELECT *
FROM Clientes
WHERE nombre = 'Wilmer'
AND distrito = 'Juliaca';