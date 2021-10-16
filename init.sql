USE pearson;

INSERT pais values(1,'activo','developer','2021-10-10','developer','2021-10-10','Mexico');

INSERT grado values(1,'primero','activo','developer','2021-10-10','developer','2021-10-10');
INSERT grado values(2,'segundo','activo','developer','2021-10-10','developer','2021-10-10');

INSERT grupo values(1,"A",'primero','activo','developer','2021-10-10','developer','2021-10-10');
INSERT grupo values(2,"B",'segundo','activo','developer','2021-10-10','developer','2021-10-10');

INSERT ciclo_escolar values(1,'2021',1,'2021-10-10','2022-10-10','activo','developer','2021-10-10','developer','2021-10-10');

INSERT avatar values(1,'jardinero','','','activo','developer','2021-10-10','developer','2021-10-10');
INSERT avatar values(2,'matematico','','','activo','developer','2021-10-10','developer','2021-10-10');
INSERT avatar values(3,'fotografo','','','activo','developer','2021-10-10','developer','2021-10-10');
INSERT avatar values(4,'astronauta','','','activo','developer','2021-10-10','developer','2021-10-10');
INSERT avatar values(5,'pirata','','','activo','developer','2021-10-10','developer','2021-10-10');
INSERT avatar values(6,'pintor','','','activo','developer','2021-10-10','developer','2021-10-10');
INSERT avatar values(7,'lluvia','','','activo','developer','2021-10-10','developer','2021-10-10');
INSERT avatar values(8,'florero','','','activo','developer','2021-10-10','developer','2021-10-10');
INSERT avatar values(9,'pijama','','','activo','developer','2021-10-10','developer','2021-10-10');
INSERT avatar values(10,'mago','','','activo','developer','2021-10-10','developer','2021-10-10');

INSERT sentimiento values(1,'triste','','activo','developer','2021-10-10','developer','2021-10-10');
INSERT sentimiento values(2,'miedoso','','activo','developer','2021-10-10','developer','2021-10-10');
INSERT sentimiento values(3,'enojado','','activo','developer','2021-10-10','developer','2021-10-10');
INSERT sentimiento values(4,'calmado','','activo','developer','2021-10-10','developer','2021-10-10');
INSERT sentimiento values(5,'feliz','','activo','developer','2021-10-10','developer','2021-10-10');
INSERT sentimiento values(6,'entusiasmado','','activo','developer','2021-10-10','developer','2021-10-10');

INSERT lectura values(1,'Fix el Elefante','','','activo','developer','2021-10-10','developer','2021-10-10');
INSERT lectura values(2,'Conjuntos','','','activo','developer','2021-10-10','developer','2021-10-10');
INSERT lectura values(3,'De panza pa riba','','','activo','developer','2021-10-10','developer','2021-10-10');
INSERT lectura values(4,'Una Regla Para todos','','','activo','developer','2021-10-10','developer','2021-10-10');

INSERT rol values(1,'alumno','alumno en curso','activo','developer','2021-10-10','developer','2021-10-10');

INSERT ciudad values(1,'Mexico','activo','developer','2021-10-10','developer','2021-10-10',1);

INSERT escuela values(1,"Jaime Torres Bodet",'activo','developer','2021-10-10','developer','2021-10-10',1);
INSERT escuela values(2,"Manuel Avila Camacho",'activo','developer','2021-10-10','developer','2021-10-10',1);

INSERT distribucion_escuela values(1,'activo','developer','2021-10-10','developer','2021-10-10',1,1,1);
INSERT distribucion_escuela values(2,'activo','developer','2021-10-10','developer','2021-10-10',2,2,2);

INSERT actividad values(1,'Fix el Elefante','2021-10-10','2022-10-10',1,'activa','activo','developer','2021-10-10','developer','2021-10-10',1,1);
INSERT actividad values(2,'Conjuntos','2021-10-10','2022-10-10',1,'activa','activo','developer','2021-10-10','developer','2021-10-10',2,1);
INSERT actividad values(3,'De panza pa riba','2021-10-10','2022-10-10',1,'activa','activo','developer','2021-10-10','developer','2021-10-10',3,1);
INSERT actividad values(4,'Una Regla Para todos','2021-10-10','2022-10-10',1,'activa','activo','developer','2021-10-10','developer','2021-10-10',4,1);
INSERT actividad values(5,'Fix el Elefante','2021-10-10','2022-10-10',1,'activa','activo','developer','2021-10-10','developer','2021-10-10',1,2);
INSERT actividad values(6,'Conjuntos','2021-10-10','2022-10-10',1,'activa','activo','developer','2021-10-10','developer','2021-10-10',2,2);
INSERT actividad values(7,'De panza pa riba','2021-10-10','2022-10-10',1,'activa','activo','developer','2021-10-10','developer','2021-10-10',3,2);
INSERT actividad values(8,'Una Regla Para todos','2021-10-10','2022-10-10',1,'activa','activo','developer','2021-10-10','developer','2021-10-10',4,2);

INSERT usuario values(1,'jordan','Dimas','Hernandez','Jordan-1-A-2021','Jordan@developer.com','123456789','activo','developer','2021-10-10','developer','2021-10-10',1,1);
INSERT usuario values(2,'Baruch','Gonzales','Hernandez','Baruch-1-A-2021','Baruch@developer.com','123456789','activo','developer','2021-10-10','developer','2021-10-10',1,1);

INSERT inscripcion VALUES(1,'developer','activo','2021-10-10','developer','2021-10-10',1,1,1);
INSERT inscripcion VALUES(2,'developer','activo','2021-10-10','developer','2021-10-10',1,2,2);

INSERT actividad_inscripcion VALUES(1,'developer','activo','2021-10-10','developer','2021-10-10',1,1);
INSERT actividad_inscripcion VALUES(2,'developer','activo','2021-10-10','developer','2021-10-10',1,2);
INSERT actividad_inscripcion VALUES(3,'developer','activo','2021-10-10','developer','2021-10-10',1,3);
INSERT actividad_inscripcion VALUES(4,'developer','activo','2021-10-10','developer','2021-10-10',1,4);
INSERT actividad_inscripcion VALUES(5,'developer','activo','2021-10-10','developer','2021-10-10',2,1);
INSERT actividad_inscripcion VALUES(6,'developer','activo','2021-10-10','developer','2021-10-10',2,2);
INSERT actividad_inscripcion VALUES(7,'developer','activo','2021-10-10','developer','2021-10-10',2,3);
INSERT actividad_inscripcion VALUES(8,'developer','activo','2021-10-10','developer','2021-10-10',2,4);
