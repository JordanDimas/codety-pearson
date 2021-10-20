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

INSERT pregunta_tipo values(1,"Opción múltiple cuestionamiento directo","",'activo','developer','2021-10-10','developer','2021-10-10');
INSERT pregunta_tipo values(2,"Cuadro de texto","",'activo','developer','2021-10-10','developer','2021-10-10');

INSERT insignia values(1,"","AD","",'activo','developer','2021-10-10','developer','2021-10-10');
INSERT insignia values(2,"","AG","",'activo','developer','2021-10-10','developer','2021-10-10');
INSERT insignia values(3,"","AI","",'activo','developer','2021-10-10','developer','2021-10-10');
INSERT insignia values(4,"","AT","",'activo','developer','2021-10-10','developer','2021-10-10');
INSERT insignia values(5,"","AUT","",'activo','developer','2021-10-10','developer','2021-10-10');
INSERT insignia values(6,"","CC","",'activo','developer','2021-10-10','developer','2021-10-10');
INSERT insignia values(7,"","CV","",'activo','developer','2021-10-10','developer','2021-10-10');
INSERT insignia values(8,"","E","",'activo','developer','2021-10-10','developer','2021-10-10');
INSERT insignia values(9,"","IC","",'activo','developer','2021-10-10','developer','2021-10-10');
INSERT insignia values(10,"","RG","",'activo','developer','2021-10-10','developer','2021-10-10');
INSERT insignia values(11,"","RI","",'activo','developer','2021-10-10','developer','2021-10-10');
INSERT insignia values(12,"","RL","",'activo','developer','2021-10-10','developer','2021-10-10');

--lectura 1
INSERT pregunta values(1,"Si un granjero trabaja en la granja, un barquero trabaja en _______________.",1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,12);
INSERT pregunta values(2,"En la siguiente oración, ¿qué significa la palabra resaltada?Los patos, gallos y gallinas coinciden en que tienen plumas.",1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,12);
INSERT pregunta values(3,"La primera idea importante de esta lectura es que podemos organizar elementos por los aspectos en los que coinciden. ¿En qué párrafo está esa información?",1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,11);
INSERT pregunta values(4,"¿En qué párrafo puedes encontrar la definición de “conjunto”?",1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,11);
INSERT pregunta values(5,"¿Cuáles son las palabras más importantes del quinto párrafo?",1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,11);
INSERT pregunta values(6,"Los siguientes grupos de elementos forman un conjunto, excepto:",1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,9);
INSERT pregunta values(7,"De acuerdo con la lectura, se pueden formar subconjuntos con los animales de la granja. ¿Cuál de los animales podría estar en el conjunto de animales grandes?",1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,9);
INSERT pregunta values(8,"Completa el párrafo.Lo que aprendí en esta lectura me sirve en la vida diaria para ________________________.",1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,7);
INSERT pregunta values(9,"Cuando tienes que hacer una tarea necesitas organizarte y tener algunos elementos, ¿qué necesitas para realizarla con éxito?",1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,2);
INSERT pregunta values(10,"Lee el texto y lleva a cabo la actividad.Los animales de una granja se pueden agrupar en un mismo conjunto porque comparten algunas características. También los puedes dividir en subconjuntos si identificas las características particulares que comparten algunos de ellos.Saber agrupar en conjuntos nos ayuda también a dividir nuestras emociones y a agruparlas en emociones positivas y emociones negativas. Por ejemplo, la alegría es una emoción positiva porque nos gusta sentirla, mientras que el enojo se dice que es una emoción negativa, porque si la sentimos por mucho tiempo puede provocar efectos negativos en nuestra mente y cuerpo.• Escribe el nombre de cuatro emociones que has tenido alguna vez divídelas en los subconjuntos de emociones positivas y emociones negativas.Para cada emoción que menciones, recuerda si cuando la sentiste querías seguir sintiéndote así por más tiempo o no; eso te ayudará a determinar si la emoción es positiva o negativa para ti.",1,'activo','developer','2021-10-10','developer','2021-10-10',2,11,5);
--lectura 2
INSERT pregunta values(11,"¿Quién es Flix? ",1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,11);
INSERT pregunta values(12,"¿Qué otra actividad crees que le podría gustar a Flix según lo que leíste?",1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,3);
INSERT pregunta values(13,"¿Qué hizo primero Flix?",1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,9);
INSERT pregunta values(14,"¿Cuál fue la primera travesura que Flix hizo en casa de Mateo? ",1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,9);
INSERT pregunta values(15,"¿Cuál de estas actividades hicieron primero Mateo y Flix? ",1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,9);
INSERT pregunta values(16,"¿Qué pasó al final de la historia?",1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,9);
INSERT pregunta values(17,"De acuerdo con esta historia a los elefantes les gustan algunos alimentos que están en esta lista, excepto: ",1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,11);
INSERT pregunta values(18,"¿Cuál de los siguientes datos sobre los elefantes crees que sea real y no imaginario? ",1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,7);
INSERT pregunta values(19,"¿Qué puedes hacer para ordenar en tu mente lo que sucede en una historia como la de Flix?",1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,2);
INSERT pregunta values(20,"Lee el texto y realiza la actividad.En la historia dice que Mateo se sintió triste cuando Flix regresó con su familia. A veces vivimos cambios que no nos gustan. Por ejemplo, cuando tienes que cambiarte de escuela y dejar de ver a tus amigos te puedes sentir muy triste. Para enfrentar estos cambios de la mejor manera recuerda alguna situación en la que hayas experimentado un cambio desagradable, piensa en cómo lograste salir adelante. ¿Qué hiciste? ¿Pediste ayuda a alguien? Así sabrás que en ti está la fuerza para superar cualquier suceso. • Escribe una nota a Mateo para animarlo a seguir adelante y sentirse mejor. Recuerda cómo te sobrepusiste a los cambios y dale un buen consejo.",1,'activo','developer','2021-10-10','developer','2021-10-10',2,9,1);
--lectura 3
INSERT pregunta values(21,"¿Qué pensó Lupita después ver que no le alcanzaba el dinero para comprar chocolates? ",1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,9);
INSERT pregunta values(22,"¿Cuál de las siguientes situaciones es semejante a la de Lupita?",1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,9);
INSERT pregunta values(23,"Completa la frase.La “Regla para todos” se usa para _____________.",1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,9);
INSERT pregunta values(24,"De acuerdo con “La regla para todos”, ¿cómo podemos saber que una acción es incorrecta? ",1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,9);
INSERT pregunta values(25,"De acuerdo con “la regla para todos”, ¿cuál de las siguientes acciones es correcta? ",1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,9);
INSERT pregunta values(26,"¿Qué significa la siguiente oración?“Y luego pensó que los encargados de las tiendas se verían afectados y ella también estaría afectada.”",1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,10);
INSERT pregunta values(27,"¿Cuál de las siguientes oraciones del texto es una idea principal?",1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,11);
INSERT pregunta values(28,"Completa la siguiente oración con la opción que consideres correcta.La regla para todos ___________________",1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,6);
INSERT pregunta values(29,"¿Cuál de las siguientes opciones te dice cuál es la idea principal de un texto?",1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,2);
INSERT pregunta values(30,"En la lectura Lupita vio que no tenía dinero suficiente para comprar chocolates, y tuvo el impulso de llevárselos sin pagar sin que nadie se enterase. Pero supo contenerse y pensar en lo que iba a hacer antes de llevarlo a cabo. Ésta es una cualidad muy importante: no dejarnos llevar por los impulsos y pensar las cosas antes de hacerlas. Al pensarlo con calma quizá decidamos que lo que pensábamos hacer está bien y hacerlo convencidos, pero también nos puede pasar, como a Lupita, y darnos cuenta de que nuestro impulso nos iba a hacer cometer una mala acción.Escribe un consejo a otros niños para que no se dejen llevar por sus impulsos sin pensar primero sobre lo que van a hacer. ",1,'activo','developer','2021-10-10','developer','2021-10-10',2,9,9);
--lectura 4
INSERT pregunta values(31,"¿Qué significa la palabra “brrr” que aparece al principio del poema?",1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,12);
INSERT pregunta values(32,"¿Qué momento del día era cuando la lagartija temblaba de frío?",1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,9);
INSERT pregunta values(33,"De acuerdo con la lectura, ¿en qué le ayuda el Sol a la lagartija cuando lo toma? ",1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,11);
INSERT pregunta values(34,"La sustancia que necesitan los huesos para crecer es el ________________.",1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,11);
INSERT pregunta values(35,"¿Por qué debemos protegernos de los rayos del Sol? ",1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,11);
INSERT pregunta values(36,"¿Qué podía usar la lagartija para protegerse del Sol? ",1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,11);
INSERT pregunta values(37,"La lagartija podía cubrirse con una hoja para protegerse del exceso de Sol, ¿qué harías tú para conseguir lo mismo? ",1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,9);
INSERT pregunta values(38,"¿Cuál de los siguientes versos podrías añadir a este poema? Escoge cuál es la mejor opción. ",1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,6);
INSERT pregunta values(39,"Para poder encontrar información específica y concreta en un texto que lees es importante prestar mucha ________________.",1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,4);
INSERT pregunta values(40,"Lee el texto y haz la actividad.",1,'activo','developer','2021-10-10','developer','2021-10-10',2,11,8);

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
