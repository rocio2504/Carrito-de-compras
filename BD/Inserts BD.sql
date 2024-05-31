select * from USUARIO

INSERT INTO USUARIO(Nombres,Apellidos,Correo,Clave) 
VALUES
--test123456
('Rocio','Mamani','mamaniandrea975@gmail.com','85777f270ad7cf2a790981bbae3c4e484a1dc55e24a77390d692fbf1cffa12fa')

select * from CATEGORIA

insert into CATEGORIA(Descripcion)
values
('Tecnologia'),
('Muebles'),
('Dormitorio'),
('Deporte')
GO

select * from  MARCA
insert into MARCA(Descripcion)
values
('SONYE'),
('HPTE'),
('HUNDAYTE'),
('CANONTE'),
('KODACK')
GO

SELECT * FROM DEPARTAMENTO
INSERT INTO DEPARTAMENTO(IdDepartamento, Descripcion) VALUES
('01', 'Amazonas'),
('02', 'Áncash'),
('03', 'Apurímac'),
('04', 'Arequipa'),
('05', 'Ayacucho'),
('06', 'Cajamarca'),
('07', 'Callao'),
('08', 'Cusco'),
('09', 'Huancavelica'),
('10', 'Huánuco'),
('11', 'Ica'),
('12', 'Junín'),
('13', 'La Libertad'),
('14', 'Lambayeque'),
('15', 'Lima'),
('16', 'Loreto'),
('17', 'Madre de Dios'),
('18', 'Moquegua'),
('19', 'Pasco'),
('20', 'Piura'),
('21', 'Puno'),
('22', 'San Martín'),
('23', 'Tacna'),
('24', 'Tumbes'),
('25', 'Ucayali')
GO

INSERT INTO PROVINCIA (IdProvincia, Descripcion, IdDepartamento) VALUES
-- Provincias de Arequipa (ID: 04)
('0401', 'Arequipa', '04'),
('0402', 'Camaná', '04'),
('0403', 'Caravelí', '04'),
('0404', 'Castilla', '04'),
('0405', 'Caylloma', '04'),
('0406', 'Condesuyos', '04'),
('0407', 'Islay', '04'),
('0408', 'La Unión', '04'),

-- Provincias de Lima (ID: 15)
('1501', 'Lima', '15'),
('1502', 'Barranca', '15'),
('1503', 'Cajatambo', '15'),
('1504', 'Canta', '15'),
('1505', 'Cañete', '15'),
('1506', 'Huaral', '15'),
('1507', 'Huarochirí', '15'),
('1508', 'Huaura', '15'),
('1509', 'Oyón', '15'),
('1510', 'Yauyos', '15'),

-- Provincias de Tacna (ID: 23)
('2301', 'Tacna', '23'),
('2302', 'Tarata', '23'),
('2303', 'Jorge Basadre', '23'),
('2304', 'Candarave', '23');

INSERT INTO DISTRITO (IdDistrito, Descripcion, IdProvincia, IdDepartamento) VALUES
-- Distritos de la Provincia de Arequipa (ID: 0401, Departamento ID: 04)
('040101', 'Arequipa', '0401', '04'),
('040102', 'Alto Selva Alegre', '0401', '04'),
('040103', 'Cayma', '0401', '04'),
('040104', 'Cerro Colorado', '0401', '04'),
('040105', 'Characato', '0401', '04'),
('040106', 'Chiguata', '0401', '04'),
('040107', 'Jacobo Hunter', '0401', '04'),
('040108', 'La Joya', '0401', '04'),
('040109', 'Mariano Melgar', '0401', '04'),
('040110', 'Miraflores', '0401', '04'),
('040111', 'Mollebaya', '0401', '04'),
('040112', 'Paucarpata', '0401', '04'),
('040113', 'Pocsi', '0401', '04'),
('040114', 'Polobaya', '0401', '04'),
('040115', 'Quequeña', '0401', '04'),
('040116', 'Sabandía', '0401', '04'),
('040117', 'Sachaca', '0401', '04'),
('040118', 'San Juan de Siguas', '0401', '04'),
('040119', 'San Juan de Tarucani', '0401', '04'),
('040120', 'Santa Isabel de Siguas', '0401', '04'),
('040121', 'Santa Rita de Siguas', '0401', '04'),
('040122', 'Socabaya', '0401', '04'),
('040123', 'Tiabaya', '0401', '04'),
('040124', 'Uchumayo', '0401', '04'),
('040125', 'Vitor', '0401', '04'),
('040126', 'Yanahuara', '0401', '04'),
('040127', 'Yarabamba', '0401', '04'),
('040128', 'Yura', '0401', '04'),

-- Distritos de la Provincia de Lima (ID: 1501, Departamento ID: 15)
('150101', 'Lima', '1501', '15'),
('150102', 'Ancón', '1501', '15'),
('150103', 'Ate', '1501', '15'),
('150104', 'Barranco', '1501', '15'),
('150105', 'Breña', '1501', '15'),
('150106', 'Carabayllo', '1501', '15'),
('150107', 'Chaclacayo', '1501', '15'),
('150108', 'Chorrillos', '1501', '15'),
('150109', 'Cieneguilla', '1501', '15'),
('150110', 'Comas', '1501', '15'),
('150111', 'El Agustino', '1501', '15'),
('150112', 'Independencia', '1501', '15'),
('150113', 'Jesús María', '1501', '15'),
('150114', 'La Molina', '1501', '15'),
('150115', 'La Victoria', '1501', '15'),
('150116', 'Lince', '1501', '15'),
('150117', 'Los Olivos', '1501', '15'),
('150118', 'Lurigancho', '1501', '15'),
('150119', 'Lurín', '1501', '15'),
('150120', 'Magdalena del Mar', '1501', '15'),
('150121', 'Miraflores', '1501', '15'),
('150122', 'Pachacámac', '1501', '15'),
('150123', 'Pucusana', '1501', '15'),
('150124', 'Pueblo Libre', '1501', '15'),
('150125', 'Puente Piedra', '1501', '15'),
('150126', 'Punta Hermosa', '1501', '15'),
('150127', 'Punta Negra', '1501', '15'),
('150128', 'Rímac', '1501', '15'),
('150129', 'San Bartolo', '1501', '15'),
('150130', 'San Borja', '1501', '15'),
('150131', 'San Isidro', '1501', '15'),
('150132', 'San Juan de Lurigancho', '1501', '15'),
('150133', 'San Juan de Miraflores', '1501', '15'),
('150134', 'San Luis', '1501', '15'),
('150135', 'San Martín de Porres', '1501', '15'),
('150136', 'San Miguel', '1501', '15'),
('150137', 'Santa Anita', '1501', '15'),
('150138', 'Santa María del Mar', '1501', '15'),
('150139', 'Santa Rosa', '1501', '15'),
('150140', 'Santiago de Surco', '1501', '15'),
('150141', 'Surquillo', '1501', '15'),
('150142', 'Villa El Salvador', '1501', '15'),
('150143', 'Villa María del Triunfo', '1501', '15'),

-- Distritos de la Provincia de Tacna (ID: 2301, Departamento ID: 23)
('230101', 'Tacna', '2301', '23'),
('230102', 'Alto de la Alianza', '2301', '23'),
('230103', 'Ciudad Nueva', '2301', '23'),
('230104', 'Inclán', '2301', '23'),
('230105', 'Pachía', '2301', '23'),
('230106', 'Palca', '2301', '23'),
('230107', 'Pocollay', '2301', '23'),
('230108', 'Sama', '2301', '23')
GO