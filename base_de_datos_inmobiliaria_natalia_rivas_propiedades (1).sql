-- PROYECTO INMOBILIARIA NATALIA RIVAS

CREATE DATABASE inmobiliaria_natalia_rivas;

USE inmobiliaria_natalia_rivas;

CREATE TABLE IF NOT EXISTS inquilino(
    idInquilino INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR (100) NOT NULL,
    apellido VARCHAR (100) NOT NULL,
    DNI VARCHAR (10) NOT NULL,
    CUIL VARCHAR (12) NOT NULL,
    domicilio VARCHAR (100) NOT NULL,
    email VARCHAR (100) NOT NULL
);

CREATE TABLE IF NOT EXISTS propietario(
    idPropietario INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR (100) NOT NULL,
    apellido VARCHAR (100) NOT NULL,
    DNI VARCHAR (10) NOT NULL,
    CUIL VARCHAR (12) NOT NULL,
    domicilio VARCHAR (100) NOT NULL,
    email VARCHAR (100) NOT NULL
);

CREATE TABLE IF NOT EXISTS tipoPropiedad(
    idTipoPropiedad INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR (100) NOT NULL
);

CREATE TABLE IF NOT EXISTS localidad(
    idLocalidad INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR (100) NOT NULL,
    codigoPostal VARCHAR (100) NOT NULL
);

CREATE TABLE IF NOT EXISTS provincia(
    idProvincia INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR (100) NOT NULL
);

CREATE TABLE IF NOT EXISTS propiedad(
    idPropiedad INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    direccion VARCHAR (100) NOT NULL,
    ambientes VARCHAR (2) NOT NULL,
    superficieTotal INT NOT NULL,
    garage VARCHAR (2) NOT NULL,
	idLocalidad INT NOT NULL,
    idProvincia INT NOT NULL,
	idTipoPropiedad INT NOT NULL,
    idPropietario INT NOT NULL,
	FOREIGN KEY (idLocalidad) REFERENCES localidad(idLocalidad),
    FOREIGN KEY (idProvincia) REFERENCES provincia(idProvincia),
    FOREIGN KEY (idTipoPropiedad) REFERENCES tipoPropiedad(idTipoPropiedad),
    FOREIGN KEY (idPropietario) REFERENCES propietario(idPropietario)
);

CREATE TABLE IF NOT EXISTS contrato(
    idContrato INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    plazoMeses INT NOT NULL,
    fechaInicio DATE NOT NULL,
    fechaFin DATE NOT NULL,
    valorMensual FLOAT(10,2) NOT NULL,
	idInquilino INT NOT NULL,
    idPropiedad INT NOT NULL,
	FOREIGN KEY (idInquilino) REFERENCES inquilino(idInquilino),
    FOREIGN KEY (idPropiedad) REFERENCES propiedad(idPropiedad)
    );

CREATE TABLE IF NOT EXISTS tipoDePago (
	idTipoDePago INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombrePago VARCHAR (100) NOT NULL
    );

CREATE TABLE IF NOT EXISTS recibo(
idFactura INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
fecha DATE NOT NULL,
monto FLOAT (10,2) NOT NULL,
idContrato INT NOT NULL,
idTipoDepago INT NOT NULL,
FOREIGN KEY (idContrato) REFERENCES contrato(idContrato),
FOREIGN KEY (idTipoDepago) REFERENCES tipoDePago(idTipoDepago)
);


/*INSERT INQUILINO*/

INSERT INTO inquilino(idInquilino,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (1,'Linnie','MacCrachen',20074713,74145919203,'692 Burning Wood Way','lmaccrachen0@nasa.gov');
INSERT INTO inquilino(idInquilino,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (2,'Avery','Capstaff',84221277,90024121457,'629 Portage Point','acapstaff1@zdnet.com');
INSERT INTO inquilino(idInquilino,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (3,'Teriann','Rawdall',72914988,89314765706,'0 Northfield Hill','trawdall2@smugmug.com');
INSERT INTO inquilino(idInquilino,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (4,'Wes','Diwell',51721981,43819684598,'14543 Mallard Plaza','wdiwell3@eepurl.com');
INSERT INTO inquilino(idInquilino,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (5,'Donovan','Leale',30064846,34343248123,'61 Corscot Way','dleale4@123-reg.co.uk');
INSERT INTO inquilino(idInquilino,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (6,'Lyssa','Petrovykh',28525265,83358265983,'185 Kenwood Street','lpetrovykh5@canalblog.com');
INSERT INTO inquilino(idInquilino,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (7,'Daniele','McNeilley',11178298,03130258625,'859 Manitowish Avenue','dmcneilley6@amazon.co.uk');
INSERT INTO inquilino(idInquilino,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (8,'Alanson','Jerams',70483158,22216382906,'04 Myrtle Street','ajerams7@github.io');
INSERT INTO inquilino(idInquilino,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (9,'Christoforo','Peete',29207617,30448653576,'107 Cordelia Road','cpeete8@npr.org');
INSERT INTO inquilino(idInquilino,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (10,'Cassie','Standbridge',16331451,44920875092,'4 Eagle Crest Terrace','cstandbridge9@pen.io');
INSERT INTO inquilino(idInquilino,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (11,'Parry','Chesters',56070228,42074931788,'34138 Blackbird Court','pchestersa@blog.com');
INSERT INTO inquilino(idInquilino,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (12,'Lucretia','Lefley',69032499,94724561650,'8 Hanover Lane','llefleyb@china.com.cn');
INSERT INTO inquilino(idInquilino,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (13,'Hoyt','Cherrett',59553774,58008932102,'167 Menomonie Point','hcherrettc@uol.com.br');
INSERT INTO inquilino(idInquilino,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (14,'Trenna','Desborough',68481428,06427257997,'737 Delladonna Plaza','tdesboroughd@rediff.com');
INSERT INTO inquilino(idInquilino,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (15,'Morten','Quantrell',12528272,47122032592,'18762 Commercial Park','mquantrelle@biblegateway.com');
INSERT INTO inquilino(idInquilino,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (16,'Annetta','Tebbett',79364986,17773835569,'423 Crownhardt Terrace','atebbettf@fotki.com');
INSERT INTO inquilino(idInquilino,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (17,'Juditha','Meiklam',75413242,78462316401,'7 Judy Point','jmeiklamg@dailymotion.com');
INSERT INTO inquilino(idInquilino,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (18,'Reiko','Ticksall',19775294,86054422654,'474 Buell Street','rticksallh@latimes.com');
INSERT INTO inquilino(idInquilino,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (19,'Bryanty','Kerwin',74171039,77381544832,'6291 Starling Junction','bkerwini@disqus.com');
INSERT INTO inquilino(idInquilino,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (20,'Gnni','Ramberg',13188786,84581310954,'5473 Crest Line Way','grambergj@google.com.hk');

/*INSERT PROPIETARIO*/

INSERT INTO propietario(idPropietario,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (1,'Annie','Casley',37813671,23874381160,'86971 Hovde Avenue','acasley0@goo.gl');
INSERT INTO propietario(idPropietario,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (2,'Evangelin','Llop',52471661,30028141051,'6030 Ramsey Junction','ellop1@marketwatch.com');
INSERT INTO propietario(idPropietario,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (3,'Elane','O''Cridigan',25635064,29553128309,'331 Eggendart Hill','eocridigan2@weibo.com');
INSERT INTO propietario(idPropietario,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (4,'Dougy','Boome',82372071,95500595223,'0 Green Junction','dboome3@lulu.com');
INSERT INTO propietario(idPropietario,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (5,'Nannie','Hammill',36227337,96294074934,'57776 Knutson Hill','nhammill4@hc360.com');
INSERT INTO propietario(idPropietario,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (6,'Annadiana','Robertelli',60172760,49677734318,'551 Corscot Point','arobertelli5@bravesites.com');
INSERT INTO propietario(idPropietario,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (7,'Kacie','Slowgrove',12645079,33322389128,'8464 Burning Wood Junction','kslowgrove6@usatoday.com');
INSERT INTO propietario(idPropietario,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (8,'Shelia','Mattussevich',24712716,48754589305,'9 Mitchell Point','smattussevich7@friendfeed.com');
INSERT INTO propietario(idPropietario,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (9,'Valaria','Klawi',43490499,16857224430,'010 Hermina Alley','vklawi8@google.ca');
INSERT INTO propietario(idPropietario,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (10,'Viviana','Emig',36883819,34724989979,'113 Hazelcrest Place','vemig9@dedecms.com');
INSERT INTO propietario(idPropietario,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (11,'Newton','Dyshart',83783500,84210484408,'388 Hovde Park','ndysharta@amazon.de');
INSERT INTO propietario(idPropietario,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (12,'Clayson','Raulstone',81278976,86737262283,'3 Banding Plaza','craulstoneb@samsung.com');
INSERT INTO propietario(idPropietario,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (13,'Claudine','Dowd',02419386,49237178722,'42 David Avenue','cdowdc@unblog.fr');
INSERT INTO propietario(idPropietario,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (14,'Luce','Bier',93078820,85455813381,'16 Holmberg Point','lbierd@go.com');
INSERT INTO propietario(idPropietario,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (15,'Deni','Haste',54386648,00335953888,'170 Arrowood Center','dhastee@springer.com');
INSERT INTO propietario(idPropietario,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (16,'Maximilianus','Farris',00945244,41533323309,'9 Forest Road','mfarrisf@ucoz.ru');
INSERT INTO propietario(idPropietario,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (17,'Tandi','Brogi',88127393,24430458445,'478 Walton Place','tbrogig@merriam-webster.com');
INSERT INTO propietario(idPropietario,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (18,'Tracy','Rosingdall',20390882,73340306680,'334 Donald Park','trosingdallh@linkedin.com');
INSERT INTO propietario(idPropietario,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (19,'Brigid','Gerrie',83569551,03565747990,'6897 Namekagon Place','bgerriei@archive.org');
INSERT INTO propietario(idPropietario,nombre,apellido,DNI,CUIL,domicilio,email) VALUES (20,'Gunther','Wynne',54541316,74802883374,'91969 Schmedeman Road','gwynnej@gizmodo.com');

/*INSERT TIPROPOPIEDAD*/

INSERT INTO tipoPropiedad(idTipoPropiedad,nombre) VALUES (1,'Departamento');
INSERT INTO tipoPropiedad(idTipoPropiedad,nombre) VALUES (2,'Departamento tipo casa');
INSERT INTO tipoPropiedad(idTipoPropiedad,nombre) VALUES (3,'Casa');
INSERT INTO tipoPropiedad(idTipoPropiedad,nombre) VALUES (4,'Local');
INSERT INTO tipoPropiedad(idTipoPropiedad,nombre) VALUES (5,'Cochera');
INSERT INTO tipoPropiedad(idTipoPropiedad,nombre) VALUES (6,'Galpon');
INSERT INTO tipoPropiedad(idTipoPropiedad,nombre) VALUES (7,'Lote');

/*INSERT LOCALIDAD*/

INSERT INTO localidad(idLocalidad,nombre,codigopostal) VALUES (1,'Caseros',1678);
INSERT INTO localidad(idLocalidad,nombre,codigopostal) VALUES (2,'Churruca',1691);
INSERT INTO localidad(idLocalidad,nombre,codigopostal) VALUES (3,'Ciudad Jardin',1684);
INSERT INTO localidad(idLocalidad,nombre,codigopostal) VALUES (4,'Ciudadela',1701);
INSERT INTO localidad(idLocalidad,nombre,codigopostal) VALUES (5,'El Libertador',1692);
INSERT INTO localidad(idLocalidad,nombre,codigopostal) VALUES (6,'Jose Ingenieros',1703);
INSERT INTO localidad(idLocalidad,nombre,codigopostal) VALUES (7,'Loma Hermosa',1657);
INSERT INTO localidad(idLocalidad,nombre,codigopostal) VALUES (8,'Martín Coronado',1683);
INSERT INTO localidad(idLocalidad,nombre,codigopostal) VALUES (9,'Once de Septiembre',1690);
INSERT INTO localidad(idLocalidad,nombre,codigopostal) VALUES (10,'Pablo Podesta',1687);
INSERT INTO localidad(idLocalidad,nombre,codigopostal) VALUES (11,'Remedios de Escalada',1689);
INSERT INTO localidad(idLocalidad,nombre,codigopostal) VALUES (12,'Saenz Peña',1674);
INSERT INTO localidad(idLocalidad,nombre,codigopostal) VALUES (13,'Santos Lugares',1676);
INSERT INTO localidad(idLocalidad,nombre,codigopostal) VALUES (14,'Villa Bosch',1682);
INSERT INTO localidad(idLocalidad,nombre,codigopostal) VALUES (15,'Villa Raffo',1675);

/*INSAERT PROVINCIA*/

INSERT INTO provincia(idProvincia,nombre) VALUES (1,'Buenos Aires');
INSERT INTO provincia(idProvincia,nombre) VALUES (2,'Catamarca');
INSERT INTO provincia(idProvincia,nombre) VALUES (3,'Chaco');
INSERT INTO provincia(idProvincia,nombre) VALUES (4,'Chubut');
INSERT INTO provincia(idProvincia,nombre) VALUES (5,'Córdoba');
INSERT INTO provincia(idProvincia,nombre) VALUES (6,'Corrientes');
INSERT INTO provincia(idProvincia,nombre) VALUES (7,'Entre Ríos');
INSERT INTO provincia(idProvincia,nombre) VALUES (8,'Formosa');
INSERT INTO provincia(idProvincia,nombre) VALUES (9,'Jujuy');
INSERT INTO provincia(idProvincia,nombre) VALUES (10,'La Pampa');
INSERT INTO provincia(idProvincia,nombre) VALUES (11,'La Rioja');
INSERT INTO provincia(idProvincia,nombre) VALUES (12,'Mendoza');
INSERT INTO provincia(idProvincia,nombre) VALUES (13,'Misiones');
INSERT INTO provincia(idProvincia,nombre) VALUES (14,'Neuquén');
INSERT INTO provincia(idProvincia,nombre) VALUES (15,'Río Negro');
INSERT INTO provincia(idProvincia,nombre) VALUES (16,'Salta');
INSERT INTO provincia(idProvincia,nombre) VALUES (17,'San Juan');
INSERT INTO provincia(idProvincia,nombre) VALUES (18,'San Luis');
INSERT INTO provincia(idProvincia,nombre) VALUES (19,'Santa Cruz');
INSERT INTO provincia(idProvincia,nombre) VALUES (20,'Santa Fe');
INSERT INTO provincia(idProvincia,nombre) VALUES (21,'Santiago del Estero');
INSERT INTO provincia(idProvincia,nombre) VALUES (22,'Tierra del Fuego, Antártida e Islas del Atlántico Sur');
INSERT INTO provincia(idProvincia,nombre) VALUES (23,'Tucumán');

/*INSERT PROPIEDAD*/

INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (1,'1,875 Little Fleur Park', 2, 50, 'no',1,1,1,1);
INSERT INTO propiedad(idpropiedad,direccion,  ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (2,'2,5 Walton Court',1, 20, 'si',1,1,1,2);
INSERT INTO propiedad(idpropiedad,direccion,  ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (3,'3,99 Bonner Court',2, 60, 'si',1,1,1,3);
INSERT INTO propiedad(idpropiedad,direccion,  ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (4,'4,31 Delladonna Drive',2, 50, 'si',1,1,1,4);
INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (5,'5,5 Reinke Alley',1, 45, 'si',1,1,2,5);
INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (6,'6,5 Northport Court',1, 30, 'no',1,1,2,6);
INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (7,'7,32 Straubel Park',2, 35, 'no',1,1,2,7);
INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (8,'8,941 Melody Point',2, 80, 'no',1,1,3,8);
INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (9,'9,10652 Mccormick Center',3, 60, 'si',3,1,3,9);
INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (10,'10,6 Carey Plaza',1, 10, 'no',3,1,4,10);
INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (11,'11,9 Crownhardt Avenue',1, 30, 'no',3,1,5,11);
INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (12,'12,215 Fremont Plaza',1, 700, 'no',4,1,6,12);
INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (13,'13,659 Maryland Court',2, 50, 'no',4,1,1,13);
INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (14,'14,2 South Center',3, 70, 'si',12,1,1,14);
INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (15,'15,2479 Coolidge Crossing',2, 55, 'no',14,1,1,15);
INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (16,'16,0446 Thackeray Terrace',3, 60, 'no',15,1,2,2); 
INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (17,'17,789 Dennis Street',1, 45, 'no',7,1,2,3);
INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (18,'18,169 Eagan Way',2, 50, 'no',2,1,3,16);
INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (19,'19,6246 Eliot Street',4, 95, 'no',2,1,3,17);
INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (20,'20,620 Grasskamp Avenue',2, 55, 'no',1,1,1,18);
INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (21,'233 Waubesa Street',2, 45, 'no',1,1,1,19);
INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (22,'9774 Arapahoe Point',3, 80, 'no',3,1,2,20);
INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (23,'3942 Maple Plaza',2, 35, 'no',3,1,3,2);
INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (24,'359 Merrick Way',2, 55, 'no',1,1,2,2);
INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (25,'2435 Glacier Hill Plaza',1, 48, 'no',1,1,1,4);
INSERT INTO propiedad(idpropiedad,direccion, ambientes, superficieTotal, garage, idlocalidad,idprovincia,idtipopropiedad,idpropietario) VALUES (26,'43 Steensland Park',1, 36, 'no',1,1,4,5);

/*INSERT CONTRATO*/

INSERT INTO contrato(idContrato,plazoMeses,fechaInicio,fechaFin,valorMensual,idInquilino,idPropiedad) VALUES (1,36,'20201001','20230930',134257.47,1,1);
INSERT INTO contrato(idContrato,plazoMeses,fechaInicio,fechaFin,valorMensual,idInquilino,idPropiedad) VALUES (2,36,'20200101','20241231',25666.81,1,1);
INSERT INTO contrato(idContrato,plazoMeses,fechaInicio,fechaFin,valorMensual,idInquilino,idPropiedad) VALUES (3,36,'20221101','20251031',587522.90,1,1);
INSERT INTO contrato(idContrato,plazoMeses,fechaInicio,fechaFin,valorMensual,idInquilino,idPropiedad) VALUES (4,36,'20221201','20251130',6000.20,2,2);
INSERT INTO contrato(idContrato,plazoMeses,fechaInicio,fechaFin,valorMensual,idInquilino,idPropiedad) VALUES (5,36,'20200101','20221231',33041.32,3,3);
INSERT INTO contrato(idContrato,plazoMeses,fechaInicio,fechaFin,valorMensual,idInquilino,idPropiedad) VALUES (6,36,'20200401','20230331',129909.75,4,4);
INSERT INTO contrato(idContrato,plazoMeses,fechaInicio,fechaFin,valorMensual,idInquilino,idPropiedad) VALUES (7,36,'20201001','20230930',43238.27,5,5);
INSERT INTO contrato(idContrato,plazoMeses,fechaInicio,fechaFin,valorMensual,idInquilino,idPropiedad) VALUES (8,36,'20200601','20230531',126369.58,6,6);
INSERT INTO contrato(idContrato,plazoMeses,fechaInicio,fechaFin,valorMensual,idInquilino,idPropiedad) VALUES (9,36,'20200401','20230331',21467.13,7,7);
INSERT INTO contrato(idContrato,plazoMeses,fechaInicio,fechaFin,valorMensual,idInquilino,idPropiedad) VALUES (10,36,'20220801','20250731',32372.66,8,8);
INSERT INTO contrato(idContrato,plazoMeses,fechaInicio,fechaFin,valorMensual,idInquilino,idPropiedad) VALUES (11,36,'20210801','20240731',114541.23,9,9);
INSERT INTO contrato(idContrato,plazoMeses,fechaInicio,fechaFin,valorMensual,idInquilino,idPropiedad) VALUES (12,36,'20220201','20250131',178010.71,10,10);
INSERT INTO contrato(idContrato,plazoMeses,fechaInicio,fechaFin,valorMensual,idInquilino,idPropiedad) VALUES (13,36,'20220301','20250228',81652.74,11,11);
INSERT INTO contrato(idContrato,plazoMeses,fechaInicio,fechaFin,valorMensual,idInquilino,idPropiedad) VALUES (14,36,'20220801','20250731',36457.13,12,12);
INSERT INTO contrato(idContrato,plazoMeses,fechaInicio,fechaFin,valorMensual,idInquilino,idPropiedad) VALUES (15,36,'20200901','20230831',194824.00,13,13);
INSERT INTO contrato(idContrato,plazoMeses,fechaInicio,fechaFin,valorMensual,idInquilino,idPropiedad) VALUES (16,36,'20201001','20230930',82976.14,14,14);
INSERT INTO contrato(idContrato,plazoMeses,fechaInicio,fechaFin,valorMensual,idInquilino,idPropiedad) VALUES (17,36,'20200301','20230228',35242.00,15,15);
INSERT INTO contrato(idContrato,plazoMeses,fechaInicio,fechaFin,valorMensual,idInquilino,idPropiedad) VALUES (18,36,'20200401','20230331',69143.27,16,16);
INSERT INTO contrato(idContrato,plazoMeses,fechaInicio,fechaFin,valorMensual,idInquilino,idPropiedad) VALUES (19,36,'20220101','20241231',103780.08,17,17);
INSERT INTO contrato(idContrato,plazoMeses,fechaInicio,fechaFin,valorMensual,idInquilino,idPropiedad) VALUES (20,36,'20200601','20230531',46819.19,18,18);
INSERT INTO contrato(idContrato,plazoMeses,fechaInicio,fechaFin,valorMensual,idInquilino,idPropiedad) VALUES (21,36,'20200901','20230831',30506.15,19,19);
INSERT INTO contrato(idContrato,plazoMeses,fechaInicio,fechaFin,valorMensual,idInquilino,idPropiedad) VALUES (22,36,'20200701','20230630',48207.37,20,20);

/* INSERT TIPODEPROPIEDAD*/

INSERT INTO tipoDePago(idTipoDePago,nombrePago) VALUES (1,'efectivo');
INSERT INTO tipoDePago(idTipoDePago,nombrePago) VALUES (2,'cuenta bancaria');
INSERT INTO tipoDePago(idTipoDePago,nombrePago) VALUES (3,'cheque');

/* INSERT RECIBO */

INSERT INTO recibo(idFactura,fecha,monto,idContrato,idTipoDePago) VALUES (1,'20220819',7676.43,1,1);
INSERT INTO recibo(idFactura,fecha,monto,idContrato,idTipoDePago) VALUES (2,'20221105',190943.17,3,1);
INSERT INTO recibo(idFactura,fecha,monto,idContrato,idTipoDePago) VALUES (3,'20230517',24129.32,4,1);
INSERT INTO recibo(idFactura,fecha,monto,idContrato,idTipoDePago) VALUES (4,'20221002',117342.62,6,1);
INSERT INTO recibo(idFactura,fecha,monto,idContrato,idTipoDePago) VALUES (5,'20230318',77732.85,8,1);
INSERT INTO recibo(idFactura,fecha,monto,idContrato,idTipoDePago) VALUES (6,'20221231',21116.64,2,2);
INSERT INTO recibo(idFactura,fecha,monto,idContrato,idTipoDePago) VALUES (7,'20230330',74531.82,5,2);
INSERT INTO recibo(idFactura,fecha,monto,idContrato,idTipoDePago) VALUES (8,'20230413',26991.27,7,2);
INSERT INTO recibo(idFactura,fecha,monto,idContrato,idTipoDePago) VALUES (9,'20221028',153923.79,9,2);
INSERT INTO recibo(idFactura,fecha,monto,idContrato,idTipoDePago) VALUES (10,'20220725',152790.29,1,2);
INSERT INTO recibo(idFactura,fecha,monto,idContrato,idTipoDePago) VALUES (11,'20220715',79263.03,2,2);
INSERT INTO recibo(idFactura,fecha,monto,idContrato,idTipoDePago) VALUES (12,'20220904',93575.43,11,1);
INSERT INTO recibo(idFactura,fecha,monto,idContrato,idTipoDePago) VALUES (13,'20220723',180974.53,12,1);
INSERT INTO recibo(idFactura,fecha,monto,idContrato,idTipoDePago) VALUES (14,'20230503',28840.59,13,3);
INSERT INTO recibo(idFactura,fecha,monto,idContrato,idTipoDePago) VALUES (15,'20230602',66980.40,14,3);






/*VISTAS*/

/*1-Saber la cantidad de contratos vigentes*/

CREATE VIEW cantidad_contratos_vigentes AS
SELECT COUNT(idContrato) AS 'Cantidad Contratos Vigentes'
FROM contrato
WHERE fechaFin > CURRENT_DATE;

/*Comprobación de la vista*/

/*SELECT * FROM cantidad_contratos_vigentes;*/

/*2-Saber la cantidad de contratos agrupados por propietario, saber el valor total que cobra y la cantidad de contratos que tienen a su nombre*/

CREATE VIEW cantidad_de_contratos_y_valor_por_propietario AS
SELECT CONCAT(pr.nombre, ' ', pr.apellido) AS 'Propietario', 
		SUM(c.valorMensual) 'Valor total a cobrar por mes', 
        COUNT(c.idContrato) AS 'Cantidad de contratos'
FROM contrato AS c
INNER JOIN propiedad AS p
ON p.idPropiedad = c.idPropiedad
INNER JOIN propietario AS pr
ON pr.idPropietario = p.idPropietario
GROUP BY CONCAT(pr.nombre, ' ', pr.apellido)
ORDER BY CONCAT(pr.nombre, ' ', pr.apellido) ASC;

/*Comprobación de la vista*/

/*SELECT * FROM cantidad_de_contratos_y_valor_por_propietario;*/

/*3-Saber el valor que paga cada inquilino, agrupados por el mismo y la direccion completa de la propiedad que alquila*/

CREATE VIEW valor_alquiler_por_inquilino AS
SELECT CONCAT(i.nombre,' ', i.apellido) AS 'Inquilino', 
		c.valorMensual AS 'Valor a pagar por mes', 
        CONCAT(p.direccion, ',', ' ', l.nombre, ',', ' ', pv.nombre) AS 'Propiedad que alquiler'
FROM contrato AS c
INNER JOIN inquilino AS i
ON c.idInquilino = i.idInquilino
INNER JOIN propiedad AS p
ON c.idPropiedad = p.idPropiedad
INNER JOIN localidad AS l
ON p.idLocalidad = l.idLocalidad
INNER JOIN provincia AS pv
ON p.idProvincia = pv.idProvincia
GROUP BY CONCAT(i.nombre,' ', i.apellido)
ORDER BY CONCAT(i.nombre,' ', i.apellido) ASC;

/*Comprobación de la vista*/

/*SELECT * FROM valor_alquiler_por_inquilino;*/

/*4-Saber la cantidad de propiedades que la inmobiliaria tiene en cada localidad*/

CREATE VIEW cantidad_propiedades_por_localidad AS 
SELECT COUNT(p.idPropiedad) AS 'Cantidad de propiedades', 
		l.nombre AS 'Localidad'
FROM propiedad AS p
RIGHT JOIN localidad AS l
ON p.idLocalidad = l.idLocalidad
GROUP BY l.nombre 
ORDER BY COUNT(p.idPropiedad) DESC
;

/*Comprobación de la vista*/

/*SELECT * FROM cantidad_propiedades_por_localidad;*/

/*5-Saber cuanto se cobra por mes como comision por contrato, que es el 5% del valor del alquiler*/

CREATE VIEW comision_por_contrato AS
SELECT idContrato, 
		FORMAT(valorMensual * 5 /100, 0) AS 'Comision'
FROM contrato
WHERE fechaFin > CURRENT_DATE
GROUP BY idContrato;

/*Comprobación de la vista*/

/*SELECT * FROM comision_por_contrato; */

/*6-Saber cuanto se cobra por mes como comision en total*/

CREATE VIEW comision_total AS
SELECT COUNT(idContrato) AS 'Total contratos', 
		FORMAT(SUM(valorMensual) * 5 /100, 0) AS 'Comision total por mes'
FROM contrato
WHERE fechaFin > CURRENT_DATE;

/*Comprobación de la vista*/

/*SELECT * FROM comision_total;*/




/*FUNCIONES*/

/*Funcion 1: Consultar de que forma fue abonado cada recibo.*/

DELIMITER $$
CREATE FUNCTION traer_forma_pago (p_idTipoDePago INT)
RETURNS VARCHAR(255)
READS SQL DATA
BEGIN
	DECLARE resultado VARCHAR(255);
    SET resultado = (SELECT nombrePago FROM tipoDePago WHERE idTipoDePago = p_idTipoDePago);
	RETURN resultado;
END
$$

/*Comprobación de la funcion*/

/*SELECT idFactura, fecha, monto, traer_forma_pago(idTipoDePago) AS 'Forma de pago' FROM recibo;*/

/* Funcion 2: 2.	 Consultar si fue pagado el monto total, parcial o extra del alquiler mensual.*/

DELIMITER $$
CREATE FUNCTION traer_monto_pagado(p_id_factura INT)
RETURNS VARCHAR(255)
READS SQL DATA
BEGIN

DECLARE p_monto FLOAT;
DECLARE p_idcontrato INT;
DECLARE p_valorMensual FLOAT;

SET p_monto = (select monto from recibo where idfactura = p_id_factura);
SET p_idcontrato = (select idcontrato from recibo where idfactura = p_id_factura);
SET p_valorMensual = (select valorMensual from contrato where idcontrato= p_idcontrato) ;
    CASE 
		WHEN p_monto  = p_valorMensual THEN RETURN 'MONTO TOTAL';
        WHEN p_monto  < p_valorMensual THEN RETURN 'MONTO PARCIAL';
        WHEN p_monto  > p_valorMensual THEN RETURN 'MONTO EXTRA';
        ELSE RETURN 'NO TIENE RECIBO';
    END CASE;
END
$$

/*Comprobación de la funcion*/

/*SELECT *, traer_monto_pagado(idFactura) AS 'Monto Pagado'
FROM recibo;*/

/*STORED PROCEDURE*/

/* Stored Procedure 1: 1.	Consultar la cantidad de dinero que entro en la inmobiliaria como comisión en el mes actual.*/

DELIMITER //
CREATE PROCEDURE sp_traer_total_comision_por_mes (OUT total FLOAT)
BEGIN   
	SELECT SUM(valorMensual) * 5 /100 INTO total FROM contrato WHERE fechaFin >= CURRENT_DATE;
END//


/*set @total = 0;
CALL sp_traer_total_comision_por_mes(@total);
SELECT ROUND(@total, 2) AS 'Total Comisiones Por Mes';*/

/*Comprobación del stored procedure*/

/* Stored Procedure 2: 2.	Consultar todos los contratos a vencer desde la fecha ingresada hasta los próximos 3 meses.*/

DELIMITER $$
CREATE PROCEDURE sp_contratos_a_vencer(IN p_fechaFin DATE)
BEGIN
	 IF p_fechaFin IS NULL THEN
     SELECT 'Debe ingresar un valor';
     ELSE
		IF (SELECT COUNT(*) FROM contrato 
		WHERE fechaFin BETWEEN p_fechaFin AND DATE_ADD(fechaFin, INTERVAL +3 MONTH)) = 0 THEN
		SELECT 'No hay contratos a vencer';
        ELSE
		SELECT * FROM contrato 
		WHERE fechaFin BETWEEN p_fechaFin AND DATE_ADD(p_fechaFin, INTERVAL +3 MONTH);
		END IF;
	END IF;
END $$

/*Comprobación del stored procedure*/

/*CALL sp_contratos_a_vencer(null);
CALL sp_contratos_a_vencer('2023-06-07');
CALL sp_contratos_a_vencer('2028-06-07');*/



/* TRIGGERS */

/*Tabla creada para realizar el trigger 1*/

CREATE TABLE IF NOT EXISTS contrato_historico (
idContrato INT, 
plazoMeses INT, 
fechaInicio DATE, 
fechaFin DATE, 
valorMensual FLOAT, 
idInquilino INT, 
idPropiedad INT, 
fecha_hora DATETIME
);

/* Trigger 1: Tener un histórico de contratos luego de que se insertan.*/

DELIMITER //
CREATE TRIGGER trigger_contrato_historico
AFTER INSERT ON contrato
FOR EACH ROW 
BEGIN 
	INSERT INTO contrato_historico (idContrato, plazoMeses, fechaInicio, fechaFin, valorMensual, idInquilino, idPropiedad, fecha_hora)
    VALUES (NEW.idContrato, NEW.plazoMeses, NEW.fechaInicio, NEW.fechaFin, NEW.valorMensual, NEW.idInquilino, NEW.idPropiedad, NOW());
END//


/* Comprobacion del trigger*/

/*INSERT INTO contrato VALUES(NULL, 36, '20200401','20230331', 56841, 18, 2);

SELECT * FROM contrato_historico;*/

/* Trigger 2: Evitar que inserten plazos negativos en la tabla contrato mostrando un mensaje de error*/

DELIMITER //
CREATE TRIGGER comprobar_plazoMeses
BEFORE UPDATE ON contrato
FOR EACH ROW 
BEGIN
	DECLARE mensaje_error VARCHAR(100);
    SET mensaje_error = CONCAT ('El plazo no puede ser menor a 0');
		IF NEW.plazoMeses <= 0 THEN
			SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = mensaje_error;
		END IF;
END//

/* Comprobacion del trigger*/

/*UPDATE contrato SET plazoMeses = -3 WHERE idContrato = 2;*/