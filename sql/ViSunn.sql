create database ViSunn;

use ViSunn;

create table tblUsuario (idUsu int not null primary key AUTO_INCREMENT, nomUsu varchar(50) not null, aPatUsu varchar(50) not null,
aMatUsu varchar(50) not null, fecNac date not null, pais varchar(20) not null, email varchar(30) not null, pw varchar(30) not null, peso int not null, altura int not null, fotoPP blob not null);

create table tblSuscripcion (idSus int not null primary key AUTO_INCREMENT, tipoSus varchar(20) not null);

create table catDia (idDia int not null primary key AUTO_INCREMENT, dia date not null);

create table catAct (idAct int not null primary key AUTO_INCREMENT, actividad varchar(50) not null, timeAct time not null);

create table catReceta (idReceta int not null primary key AUTO_INCREMENT, receta text not null);

create table catAliRes (idAliRes int not null primary key AUTO_INCREMENT, aliRes varchar(50) not null);

create table catEjercicio (idEje int not null primary key AUTO_INCREMENT, ejercicio text not null, duraEje time not null, img blob not null);

create table tbl_sch (idSch int not null primary key AUTO_INCREMENT, idUsu int not null, foreign key (idUsu) references tblUsuario(idUsu), idDia int, 
foreign key (idDia) references catDia(idDia));

create table relSusUsu (idSusUsu int not null primary key AUTO_INCREMENT, idUsu int not null, idSus int not null, foreign key (idUsu) references tblUsuario(idUsu),
foreign key (idSus) references tblSuscripcion(idSus), fecIni date, fecFin date);

create table tbl_relCatAUsu (idrelCatAUsu int not null primary key AUTO_INCREMENT, idUsu int not null, idAct int not null, foreign key (idUsu) references tblUsuario(idUsu), 
foreign key (idAct) references catAct(idAct));

create table tbl_relActDia (idRelActDia int not null primary key AUTO_INCREMENT, idrelCatAUsu int not null, idDia int not null, 
foreign key (idrelCatAUsu) references tbl_relCatAUsu(idrelCatAUsu), foreign key (idDia) references catDia(idDia));

create table tbl_relCatRUsu(idCatUsu int not null primary key AUTO_INCREMENT, idUsu int not null, idAliRes int not null,  foreign key (idUsu) references tblUsuario(idUsu),
 foreign key (idAliRes) references catAliRes(idAliRes));

create table tblDieta(idDieta int not null primary key AUTO_INCREMENT, idReceta int not null, idCatUsu int not null, foreign key (idReceta) references catReceta(idReceta),
 foreign key (idCatUsu) references tbl_relCatRUsu(idCatUsu));

create table relCatEUsu(idCatEUsu int not null primary key AUTO_INCREMENT, idEje int not null, idUsu int not null, foreign key (idEje) references catEjercicio(idEje),
foreign key (idUsu) references tblUsuario(idUsu));

show tables;