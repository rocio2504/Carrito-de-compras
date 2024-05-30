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