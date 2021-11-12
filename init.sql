USE pearson;

INSERT pais values(1,'activo','developer','2021-10-10','developer','2021-10-10','México');

INSERT grado values(1,'primero','activo','developer','2021-10-10','developer','2021-10-10');
INSERT grado values(2,'segundo','activo','developer','2021-10-10','developer','2021-10-10');

INSERT grupo values(1,'A','primero','activo','developer','2021-10-10','developer','2021-10-10');
INSERT grupo values(2,'B','segundo','activo','developer','2021-10-10','developer','2021-10-10');

INSERT ciclo_escolar values(1,'2021',1,'2021-10-10','2022-10-10','activo','developer','2021-10-10','developer','2021-10-10');

INSERT avatar values(1,'jardinero','','','activo','developer','2021-10-10','developer','2021-10-10');
INSERT avatar values(2,'matemático','','','activo','developer','2021-10-10','developer','2021-10-10');
INSERT avatar values(3,'fotógrafo','','','activo','developer','2021-10-10','developer','2021-10-10');
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

INSERT pregunta_tipo values(1,'OpcMult','Opción múltiple cuestionamiento directo','activo','developer','2021-10-10','developer','2021-10-10');
INSERT pregunta_tipo values(2,'CuaText','Cuadro de texto','activo','developer','2021-10-10','developer','2021-10-10');
INSERT pregunta_tipo values(3,'OpcImage','Opción múltiple cuestionamiento Imagen','activo','developer','2021-10-10','developer','2021-10-10');

INSERT insignia values(1,'comprension lectora','','','activo','developer','2021-10-10','developer','2021-10-10');
INSERT insignia values(2,'socio emocional','','','activo','developer','2021-10-10','developer','2021-10-10');

INSERT habilidad values(1,'','AD','','activo','developer','2021-10-10','developer','2021-10-10',2);
INSERT habilidad values(2,'','AG','','activo','developer','2021-10-10','developer','2021-10-10',1);
INSERT habilidad values(3,'','AI','','activo','developer','2021-10-10','developer','2021-10-10',1);
INSERT habilidad values(4,'','AT','','activo','developer','2021-10-10','developer','2021-10-10',1);
INSERT habilidad values(5,'','AUT','','activo','developer','2021-10-10','developer','2021-10-10',2);
INSERT habilidad values(6,'','CC','','activo','developer','2021-10-10','developer','2021-10-10',1);
INSERT habilidad values(7,'','CV','','activo','developer','2021-10-10','developer','2021-10-10',1);
INSERT habilidad values(8,'','E','','activo','developer','2021-10-10','developer','2021-10-10',2);
INSERT habilidad values(9,'','IC','','activo','developer','2021-10-10','developer','2021-10-10',2);
INSERT habilidad values(10,'','RG','','activo','developer','2021-10-10','developer','2021-10-10',1);
INSERT habilidad values(11,'','RI','','activo','developer','2021-10-10','developer','2021-10-10',1);
INSERT habilidad values(12,'','RL','','activo','developer','2021-10-10','developer','2021-10-10',1);

INSERT pregunta values(1,'Si un granjero trabaja en la granja, un barquero trabaja en _______________.',1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,12,1);
INSERT pregunta values(2,'En la siguiente oración, ¿qué significa la palabra resaltada? Los patos, gallos y gallinas coinciden en que tienen plumas.',1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,12,1);
INSERT pregunta values(3,'La primera idea importante de esta lectura es que podemos organizar elementos por los aspectos en los que coinciden. ¿En qué párrafo está esa información?',1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,11,1);
INSERT pregunta values(4,'¿En qué párrafo puedes encontrar la definición de “conjunto”?',1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,11,1);
INSERT pregunta values(5,'¿Cuáles son las palabras más importantes del quinto párrafo?',1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,11,1);
INSERT pregunta values(6,'Los siguientes grupos de elementos forman un conjunto, excepto:',1,'activo','developer','2021-10-10','developer','2021-10-10',3,11,9,1);
INSERT pregunta values(7,'De acuerdo con la lectura, se pueden formar subconjuntos con los animales de la granja. ¿Cuál de los animales podría estar en el conjunto de animales grandes?',1,'activo','developer','2021-10-10','developer','2021-10-10',3,11,9,1);
INSERT pregunta values(8,'Completa el párrafo. Lo que aprendí en esta lectura me sirve en la vida diaria para ________________________.',1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,7,1);
INSERT pregunta values(9,'Cuando tienes que hacer una tarea necesitas organizarte y tener algunos elementos, ¿qué necesitas para realizarla con éxito?',1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,2,1);
INSERT pregunta values(10,'Lee el texto y lleva a cabo la actividad.Los animales de una granja se pueden agrupar en un mismo conjunto porque comparten algunas características. También los puedes dividir en subconjuntos si identificas las características particulares que comparten algunos de ellos.Saber agrupar en conjuntos nos ayuda también a dividir nuestras emociones y a agruparlas en emociones positivas y emociones negativas. Por ejemplo, la alegría es una emoción positiva porque nos gusta sentirla, mientras que el enojo se dice que es una emoción negativa, porque si la sentimos por mucho tiempo puede provocar efectos negativos en nuestra mente y cuerpo.• Escribe el nombre de cuatro emociones que has tenido alguna vez divídelas en los subconjuntos de emociones positivas y emociones negativas.Para cada emoción que menciones, recuerda si cuando la sentiste querías seguir sintiéndote así por más tiempo o no; eso te ayudará a determinar si la emoción es positiva o negativa para ti. ',1,'activo','developer','2021-10-10','developer','2021-10-10',2,11,5,2);

INSERT pregunta values(11,'¿Quién es Flix? ',1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,11,1);
INSERT pregunta values(12,'¿Qué otra actividad crees que le podría gustar a Flix según lo que leíste?',1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,3,1);
INSERT pregunta values(13,'¿Qué hizo primero Flix?',1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,9,1);
INSERT pregunta values(14,'¿Cuál fue la primera travesura que Flix hizo en casa de Mateo? ',1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,9,1);
INSERT pregunta values(15,'¿Cuál de estas actividades hicieron primero Mateo y Flix? ',1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,9,1);
INSERT pregunta values(16,'¿Qué pasó al final de la historia?',1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,9,1);
INSERT pregunta values(17,'De acuerdo con esta historia a los elefantes les gustan algunos alimentos que están en esta lista, excepto: ',1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,11,1);
INSERT pregunta values(18,'¿Cuál de los siguientes datos sobre los elefantes crees que sea real y no imaginario? ',1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,7,1);
INSERT pregunta values(19,'¿Qué puedes hacer para ordenar en tu mente lo que sucede en una historia como la de Flix?',1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,2,1);
INSERT pregunta values(20,'Lee el texto y realiza la actividad.En la historia dice que Mateo se sintió triste cuando Flix regresó con su familia. A veces vivimos cambios que no nos gustan. Por ejemplo, cuando tienes que cambiarte de escuela y dejar de ver a tus amigos te puedes sentir muy triste. Para enfrentar estos cambios de la mejor manera recuerda alguna situación en la que hayas experimentado un cambio desagradable, piensa en cómo lograste salir adelante. ¿Qué hiciste? ¿Pediste ayuda a alguien? Así sabrás que en ti está la fuerza para superar cualquier suceso. • Escribe una nota a Mateo para animarlo a seguir adelante y sentirse mejor. Recuerda cómo te sobrepusiste a los cambios y dale un buen consejo.',1,'activo','developer','2021-10-10','developer','2021-10-10',2,9,1,2);

INSERT pregunta values(21,'¿Qué pensó Lupita después ver que no le alcanzaba el dinero para comprar chocolates? ',1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,9,1);
INSERT pregunta values(22,'¿Cuál de las siguientes situaciones es semejante a la de Lupita?',1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,9,1);
INSERT pregunta values(23,'Completa la frase. La “Regla para todos” se usa para _____________.',1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,9,1);
INSERT pregunta values(24,'De acuerdo con “La regla para todos”, ¿cómo podemos saber que una acción es incorrecta? ',1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,9,1);
INSERT pregunta values(25,'De acuerdo con “la regla para todos”, ¿cuál de las siguientes acciones es correcta? ',1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,9,1);
INSERT pregunta values(26,'¿Qué significa la siguiente oración? “Y luego pensó que los encargados de las tiendas se verían afectados y ella también estaría afectada.”',1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,10,1);
INSERT pregunta values(27,'¿Cuál de las siguientes oraciones del texto es una idea principal?',1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,11,1);
INSERT pregunta values(28,'Completa la siguiente oración con la opción que consideres correcta. La regla para todos ___________________',1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,6,1);
INSERT pregunta values(29,'¿Cuál de las siguientes opciones te dice cuál es la idea principal de un texto?',1,'activo','developer','2021-10-10','developer','2021-10-10',1,9,2,1);
INSERT pregunta values(30,'En la lectura Lupita vio que no tenía dinero suficiente para comprar chocolates, y tuvo el impulso de llevárselos sin pagar sin que nadie se enterase. Pero supo contenerse y pensar en lo que iba a hacer antes de llevarlo a cabo. Ésta es una cualidad muy importante: no dejarnos llevar por los impulsos y pensar las cosas antes de hacerlas. Al pensarlo con calma quizá decidamos que lo que pensábamos hacer está bien y hacerlo convencidos, pero también nos puede pasar, como a Lupita, y darnos cuenta de que nuestro impulso nos iba a hacer cometer una mala acción.Escribe un consejo a otros niños para que no se dejen llevar por sus impulsos sin pensar primero sobre lo que van a hacer. ',1,'activo','developer','2021-10-10','developer','2021-10-10',2,9,9,2);

INSERT pregunta values(31,'¿Qué significa la palabra “brrr” que aparece al principio del poema?',1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,12,1);
INSERT pregunta values(32,'¿Qué momento del día era cuando la lagartija temblaba de frío?',1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,9,1);
INSERT pregunta values(33,'De acuerdo con la lectura, ¿en qué le ayuda el Sol a la lagartija cuando lo toma? ',1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,11,1);
INSERT pregunta values(34,'La sustancia que necesitan los huesos para crecer es el ________________.',1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,11,1);
INSERT pregunta values(35,'¿Por qué debemos protegernos de los rayos del Sol? ',1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,11,1);
INSERT pregunta values(36,'¿Qué podía usar la lagartija para protegerse del Sol? ',1,'activo','developer','2021-10-10','developer','2021-10-10',3,11,11,1);
INSERT pregunta values(37,'La lagartija podía cubrirse con una hoja para protegerse del exceso de Sol, ¿qué harías tú para conseguir lo mismo? ',1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,9,1);
INSERT pregunta values(38,'¿Cuál de los siguientes versos podrías añadir a este poema? Escoge cuál es la mejor opción. ',1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,6,1);
INSERT pregunta values(39,'Para poder encontrar información específica y concreta en un texto que lees es importante prestar mucha ________________.',1,'activo','developer','2021-10-10','developer','2021-10-10',1,11,4,1);
INSERT pregunta values(40,'Lee el texto y haz la actividad. </br> Mientras la lagartija calentaba su cuerpo y recibía los beneficios de los rayos del Sol, alguien le advirtió de que no era bueno que estuviera todo el día así. Asolearse un poco beneficia a la salud, pero mucho puede ser perjudicial. Cuando sabemos que alguien puede lastimarse o enfermarse por hacer algo es importante que se lo digamos y le advirtamos de los peligros. Como en el poema, que alguien advierte a la lagartija que su piel se puede quemar si el Sol le da directamente por mucho tiempo. </br> •   Escribe una advertencia que le darías a una persona para evitar que se enferme o se lastime. Recuerda las veces que otras personas se preocuparon por tu salud y te dieron algún consejo. </br>',1,'activo','developer','2021-10-10','developer','2021-10-10',2,11,8,2);

INSERT lectura_pregunta values(1,1,'activo','developer','2021-10-10','developer','2021-10-10',1,1);
INSERT lectura_pregunta values(2,1,'activo','developer','2021-10-10','developer','2021-10-10',1,2);
INSERT lectura_pregunta values(3,1,'activo','developer','2021-10-10','developer','2021-10-10',1,3);
INSERT lectura_pregunta values(4,1,'activo','developer','2021-10-10','developer','2021-10-10',1,4);
INSERT lectura_pregunta values(5,1,'activo','developer','2021-10-10','developer','2021-10-10',1,5);
INSERT lectura_pregunta values(6,1,'activo','developer','2021-10-10','developer','2021-10-10',1,6);
INSERT lectura_pregunta values(7,1,'activo','developer','2021-10-10','developer','2021-10-10',1,7);
INSERT lectura_pregunta values(8,1,'activo','developer','2021-10-10','developer','2021-10-10',1,8);
INSERT lectura_pregunta values(9,1,'activo','developer','2021-10-10','developer','2021-10-10',1,9);
INSERT lectura_pregunta values(10,1,'activo','developer','2021-10-10','developer','2021-10-10',1,10);

INSERT lectura_pregunta values(11,1,'activo','developer','2021-10-10','developer','2021-10-10',2,11);
INSERT lectura_pregunta values(12,1,'activo','developer','2021-10-10','developer','2021-10-10',2,12);
INSERT lectura_pregunta values(13,1,'activo','developer','2021-10-10','developer','2021-10-10',2,13);
INSERT lectura_pregunta values(14,1,'activo','developer','2021-10-10','developer','2021-10-10',2,14);
INSERT lectura_pregunta values(15,1,'activo','developer','2021-10-10','developer','2021-10-10',2,15);
INSERT lectura_pregunta values(16,1,'activo','developer','2021-10-10','developer','2021-10-10',2,16);
INSERT lectura_pregunta values(17,1,'activo','developer','2021-10-10','developer','2021-10-10',2,17);
INSERT lectura_pregunta values(18,1,'activo','developer','2021-10-10','developer','2021-10-10',2,18);
INSERT lectura_pregunta values(19,1,'activo','developer','2021-10-10','developer','2021-10-10',2,19);
INSERT lectura_pregunta values(20,1,'activo','developer','2021-10-10','developer','2021-10-10',2,20);

INSERT lectura_pregunta values(21,1,'activo','developer','2021-10-10','developer','2021-10-10',3,21);
INSERT lectura_pregunta values(22,1,'activo','developer','2021-10-10','developer','2021-10-10',3,22);
INSERT lectura_pregunta values(23,1,'activo','developer','2021-10-10','developer','2021-10-10',3,23);
INSERT lectura_pregunta values(24,1,'activo','developer','2021-10-10','developer','2021-10-10',3,24);
INSERT lectura_pregunta values(25,1,'activo','developer','2021-10-10','developer','2021-10-10',3,25);
INSERT lectura_pregunta values(26,1,'activo','developer','2021-10-10','developer','2021-10-10',3,26);
INSERT lectura_pregunta values(27,1,'activo','developer','2021-10-10','developer','2021-10-10',3,27);
INSERT lectura_pregunta values(28,1,'activo','developer','2021-10-10','developer','2021-10-10',3,28);
INSERT lectura_pregunta values(29,1,'activo','developer','2021-10-10','developer','2021-10-10',3,29);
INSERT lectura_pregunta values(30,1,'activo','developer','2021-10-10','developer','2021-10-10',3,30);

INSERT lectura_pregunta values(31,1,'activo','developer','2021-10-10','developer','2021-10-10',4,31);
INSERT lectura_pregunta values(32,1,'activo','developer','2021-10-10','developer','2021-10-10',4,32);
INSERT lectura_pregunta values(33,1,'activo','developer','2021-10-10','developer','2021-10-10',4,33);
INSERT lectura_pregunta values(34,1,'activo','developer','2021-10-10','developer','2021-10-10',4,34);
INSERT lectura_pregunta values(35,1,'activo','developer','2021-10-10','developer','2021-10-10',4,35);
INSERT lectura_pregunta values(36,1,'activo','developer','2021-10-10','developer','2021-10-10',4,36);
INSERT lectura_pregunta values(37,1,'activo','developer','2021-10-10','developer','2021-10-10',4,37);
INSERT lectura_pregunta values(38,1,'activo','developer','2021-10-10','developer','2021-10-10',4,38);
INSERT lectura_pregunta values(39,1,'activo','developer','2021-10-10','developer','2021-10-10',4,39);
INSERT lectura_pregunta values(40,1,'activo','developer','2021-10-10','developer','2021-10-10',4,40);

INSERT respuesta values(1,'una barca','¡Claro! Estas palabras están relacionadas porque tienen la misma raíz: bar. ',1,'activo','developer','2021-10-10','developer','2021-10-10',1);
INSERT respuesta values(2,'un banco','¡Cuidado! Aunque la letra inicial es la misma, estas palabras no tienen relación.',0,'activo','developer','2021-10-10','developer','2021-10-10',1);
INSERT respuesta values(3,'una banqueta','¡No es así! Aunque estas palabras tienen muchas letras iguales no están relacionadas.',0,'activo','developer','2021-10-10','developer','2021-10-10',1);
INSERT respuesta values(4,'un arca','Observa que la letra inicial no es la misma. Las palabras de una misma familia siempre empiezan con la misma letra.',0,'activo','developer','2021-10-10','developer','2021-10-10',1);
INSERT respuesta values(5,'Que estos animales viven juntos. ','Coincidir no significa vivir juntos, ni convivir.',0,'activo','developer','2021-10-10','developer','2021-10-10',2);
INSERT respuesta values(6,'Que estos animales son iguales. ','Coincidir no quiere decir que esos animales sean iguales, sino que se tiene un aspecto en común.',0,'activo','developer','2021-10-10','developer','2021-10-10',2);
INSERT respuesta values(7,'Que estos animales tienen una misma característica.','¡Exacto! Dos elementos coinciden cuando tienen una misma característica.',1,'activo','developer','2021-10-10','developer','2021-10-10',2);
INSERT respuesta values(8,'Que estos animales piensan lo mismo.','A veces decimos que las personas coinciden en sus opiniones porque piensan los mismo sobre algo, pero “coincidir” no quiere decir eso.',0,'activo','developer','2021-10-10','developer','2021-10-10',2);
INSERT respuesta values(9,'Primero','El primer párrafo nos ayuda a imaginar una situación, pero no habla de ese tema.',0,'activo','developer','2021-10-10','developer','2021-10-10',3);
INSERT respuesta values(10,'Segundo','¡Correcto! En este párrafo se dice que los animales que forman un conjunto coinciden en algún aspecto. ',1,'activo','developer','2021-10-10','developer','2021-10-10',3);
INSERT respuesta values(11,'Tercero','El segundo párrafo menciona las características de los animales, pero no nos explica cómo organizarlos.',0,'activo','developer','2021-10-10','developer','2021-10-10',3);
INSERT respuesta values(12,'Cuarto','En este párrafo se habla de información importante, pero no es la que pide la respuesta.',0,'activo','developer','2021-10-10','developer','2021-10-10',3);
INSERT respuesta values(13,'Primero','No es así. Recuerda que en ese párrafo sólo se presenta el tema. ',0,'activo','developer','2021-10-10','developer','2021-10-10',4);
INSERT respuesta values(14,'Segundo','En este párrafo se explica cómo se hacen los conjuntos, pero no está la definición. ',0,'activo','developer','2021-10-10','developer','2021-10-10',4);
INSERT respuesta values(15,'Cuarto','¡Muy bien! Las palabras más importantes de ese párrafo explican qué es un conjunto. ',1,'activo','developer','2021-10-10','developer','2021-10-10',4);
INSERT respuesta values(16,'Quinto','¡Cuidado! Este párrafo trata sobre ejemplos de conjuntos, no de definiciones.',0,'activo','developer','2021-10-10','developer','2021-10-10',4);
INSERT respuesta values(17,'Además de este gran conjunto, podríamos formar otros más pequeños, a los que llamamos subconjuntos. ','¡Correcto! Esta parte del párrafo es importante porque explica qué es un subconjunto.',1,'activo','developer','2021-10-10','developer','2021-10-10',5);
INSERT respuesta values(18,'El subconjunto de animales pequeños incluye solamente a los gallos, las gallinas, los pollos, los patos y el gato.','Estas palabras son solamente un ejemplo, así que no son las más importantes. ',0,'activo','developer','2021-10-10','developer','2021-10-10',5);
INSERT respuesta values(19,'El subconjunto de animales grandes incluye a los caballos, las vacas y los burros.','Aquí se nombran elementos de un conjunto, así que no son las palabras más significativas. ',0,'activo','developer','2021-10-10','developer','2021-10-10',5);
INSERT respuesta values(20,'Los puercos, las ovejas y el perro.','Estas palabras son un ejemplo de otro conjunto. Busca palabras más significativas.',0,'activo','developer','2021-10-10','developer','2021-10-10',5);
INSERT respuesta values(21,'((ILUSTRACIÓN: CL_G1_B1_S08_RI24_MATE_Conjuntos01 Hacer viñetas simples de un plato plano, un plato hondo, un tenedor y una cuchara.))','Los platos y los cubiertos son utensilios para comer. Así que sí forman un conjunto.',0,'activo','developer','2021-10-10','developer','2021-10-10',6);
INSERT respuesta values(22,'((ILUSTRACIÓN: CL_G1_B1_S08_RI24_MATE_Conjuntos02 Hacer viñetas simples de un árbol, una planta, una palmera y una flor.))','Todos estos elementos son plantas, aunque tienen distintos tamaños y formas coinciden en muchos elementos. ',0,'activo','developer','2021-10-10','developer','2021-10-10',6);
INSERT respuesta values(23,'((ILUSTRACIÓN: CL_G1_B1_S08_RI24_MATE_Conjuntos03 Hacer viñetas simples de un cuaderno, un lápiz, un borrador y una pluma.))','Estos elementos son útiles escolares, por eso forman un conjunto. ',0,'activo','developer','2021-10-10','developer','2021-10-10',6);
INSERT respuesta values(24,'((ILUSTRACIÓN. CL_G1_B1_S08_RI24_MATE_Conjuntos04 Hacer viñetas simples de un perro, un jabón, un pino y un fantasma)) ','¡Estos elementos no pueden formar un conjunto porque no coinciden en nada! ',1,'activo','developer','2021-10-10','developer','2021-10-10',6);
INSERT respuesta values(25,'((ILUSTRACIÓN. CL_G1_B1_S08_RI24_MATE_Conjuntos05 viñeta simple de un conejo))','Este animal si es de la granja, pero es muy pequeño para estar en ese subconjunto. ',0,'activo','developer','2021-10-10','developer','2021-10-10',7);
INSERT respuesta values(26,'((ILUSTRACIÓN. CL_G1_B1_S08_RI24_MATE_Conjuntos06 viñeta simple de una ballena.))','Este animal sí es muy grande, pero no podría vivir en una granja. ',0,'activo','developer','2021-10-10','developer','2021-10-10',7);
INSERT respuesta values(27,'((ILUSTRACIÓN. CL_G1_B1_S08_RI24_MATE_Conjuntos07 viñeta simple de un toro)) ','¡Correcto! Los toros viven en las granjas y son animales grandes. ',1,'activo','developer','2021-10-10','developer','2021-10-10',7);
INSERT respuesta values(28,'((ILUSTRACIÓN. CL_G1_B1_S08_RI24_MATE_Conjuntos08 viñeta simple de un guajolote.))','Este animal si es de la granja, pero es pequeño para estar en ese subconjunto. ',0,'activo','developer','2021-10-10','developer','2021-10-10',7);
INSERT respuesta values(29,'trazar figuras geométricas','La geometría también es parte de las matemáticas, pero la información sobre los conjuntos no te ayudará a dibujar mejor. ',0,'activo','developer','2021-10-10','developer','2021-10-10',8);
INSERT respuesta values(30,'contar bien el cambio que me devuelven en la tienda','Aunque este tema se relaciona con las matemáticas, lo que aprendiste sobre los conjuntos no es muy útil para hacer cuentas, pero quizá a agrupar monedas.',0,'activo','developer','2021-10-10','developer','2021-10-10',8);
INSERT respuesta values(31,'aprender a distinguir los diferentes seres vivos en la clase de ciencias','¡Así es! Al estudiar seres vivos podrás reconocer sus características y formar conjuntos para recordarlos más fácilmente.',1,'activo','developer','2021-10-10','developer','2021-10-10',8);
INSERT respuesta values(32,'criar animales en una granja','Aunque el texto habla de una granja, no nos explica cómo criar animales.',0,'activo','developer','2021-10-10','developer','2021-10-10',8);
INSERT respuesta values(33,'Los textos y los horarios.','Saber los horarios para realizar una actividad es importante, pero si no conoces los pasos que debes seguir, será difícil hacerla.',0,'activo','developer','2021-10-10','developer','2021-10-10',9);
INSERT respuesta values(34,'Los materiales y las indicaciones.','¡Correcto! Si sabes cuáles son los materiales que necesitas y los pasos que debes seguir, sin duda harás tu tarea con éxito.',1,'activo','developer','2021-10-10','developer','2021-10-10',9);
INSERT respuesta values(35,'Las indicaciones y los resultados.','Sin duda, conocer las indicaciones que debes seguir te ayudará a hacer la tarea, pero también debes saber qué materiales utilizar. Los resultados llegan al final. ',0,'activo','developer','2021-10-10','developer','2021-10-10',9);
INSERT respuesta values(36,'Las instrucciones y las calificaciones.','Las instrucciones para hacer una tarea pertenecen al mismo conjunto que las indicaciones y no necesitas las calificaciones para hacerla. Pregúntate mejor ¿cómo la vas a realizar? ¿Cuáles materiales necesitas?',0,'activo','developer','2021-10-10','developer','2021-10-10',9);
INSERT respuesta values(37,'n/a','¡Bien hecho! Recuerda que el desarrollo de las habilidades socioemocionales debe ser constante, por lo que te invitamos a seguir escribiendo al respecto. ',1,'activo','developer','2021-10-10','developer','2021-10-10',10);
INSERT respuesta values(38,'Un elefante que aparece en un cuento. ','¡Eso es! Flix, el elefante, es el personaje de un cuento que lee un niño.',1,'activo','developer','2021-10-10','developer','2021-10-10',11);
INSERT respuesta values(39,'Un elefante que viaja a Tailandia. ','Flix es un elefante que vive en los bosques de Tailandia y es un personaje de un cuento.',0,'activo','developer','2021-10-10','developer','2021-10-10',11);
INSERT respuesta values(40,'Un niño que lee cuentos sobre elefantes. ','¡Cuidado! Mateo es el niño que lee un cuento sobre el elefante Flix.',0,'activo','developer','2021-10-10','developer','2021-10-10',11);
INSERT respuesta values(41,'Un elefante que tiene siete años.','¡Te confundiste un poco! Mateo, el niño que lee sobre Flix, es quien tiene 7 años.',0,'activo','developer','2021-10-10','developer','2021-10-10',11);
INSERT respuesta values(42,'Usar una patineta.','No hay ninguna pista que nos haga pensar que Flix sabe usar una patineta.',0,'activo','developer','2021-10-10','developer','2021-10-10',12);
INSERT respuesta values(43,'Tomar agua con su trompa.','A Flix le gusta mojar a todos con su trompa y para hacerlo necesita tomar mucha agua. Así tenemos una pista para descubrir lo que le gusta a Flix.',1,'activo','developer','2021-10-10','developer','2021-10-10',12);
INSERT respuesta values(44,'Leer cuentos sobre elefantes.','¡A quien le gusta leer cuentos de elefantes es a Mateo! ¡Observa los detalles! ',0,'activo','developer','2021-10-10','developer','2021-10-10',12);
INSERT respuesta values(45,'Ir a la escuela.','Nada en la historia nos dice que en los bosques de Tailandia haya una escuela para elefantes.',0,'activo','developer','2021-10-10','developer','2021-10-10',12);
INSERT respuesta values(46,'Mojar toda la casa de Mateo.','Para poder mojar la casa, Flix tendría que llegar primero ahí. Así que ésta no es la respuesta correcta.',0,'activo','developer','2021-10-10','developer','2021-10-10',13);
INSERT respuesta values(47,'Observar todo con la boca abierta.','Quien observa con la boca abierta es Mateo, no olvides prestar atención a cada personaje.',0,'activo','developer','2021-10-10','developer','2021-10-10',13);
INSERT respuesta values(48,'Salirse del cuento en el que vivía.','La historia de Flix y Mateo empieza cuando el elefante sale del cuento. Así que este es el principio de narración. ',1,'activo','developer','2021-10-10','developer','2021-10-10',13);
INSERT respuesta values(49,'Visitar a la mamá de Mateo.','Flix conoció primero a Mateo y después a su mamá, así que ésta no es la respuesta acertada.',0,'activo','developer','2021-10-10','developer','2021-10-10',13);
INSERT respuesta values(50,'Correr alrededor del cuarto','¡Intenta de nuevo! Flix sí hizo eso, pero no fue la primera travesura. ',0,'activo','developer','2021-10-10','developer','2021-10-10',14);
INSERT respuesta values(51,'Mojar todo con su trompa.','¡Exacto! Flix mojó toda la casa en cuanto llegó ahí.',1,'activo','developer','2021-10-10','developer','2021-10-10',14);
INSERT respuesta values(52,'Romper unos adornos.','No es la respuesta correcta. Flix rompió los adornos porque hizo otra travesura: correr por la casa.',0,'activo','developer','2021-10-10','developer','2021-10-10',14);
INSERT respuesta values(53,'Aventar cáscaras de cacahuates a las personas. ','¡Flix nunca hizo esto! Siempre recogía las cáscaras. Observa los detalles al leer.',0,'activo','developer','2021-10-10','developer','2021-10-10',14);
INSERT respuesta values(54,'Secar y ordenar la casa.','¡Claro! Recuerda que tuvieron que hacer esto después de la primera travesura del elefante.',1,'activo','developer','2021-10-10','developer','2021-10-10',15);
INSERT respuesta values(55,'Despedirse con cariño.','¡No precisamente! Esta fue una de las últimas actividades que hicieron juntos.',0,'activo','developer','2021-10-10','developer','2021-10-10',15);
INSERT respuesta values(56,'Salir a pasear de la mano de la mamá.','Esta actividad la hicieron en los días siguientes a la llegada del elefante.',0,'activo','developer','2021-10-10','developer','2021-10-10',15);
INSERT respuesta values(57,'Hacer bailes tailandeses.','¡Uy, nunca hicieron esto! A veces nos confundimos porque podemos imaginar cosas que no suceden en la historia. ',0,'activo','developer','2021-10-10','developer','2021-10-10',15);
INSERT respuesta values(58,'Flix se quedó a vivir con Mateo y su mamá.','Flix vivió un tiempo con Mateo y su mamá, pero eso no es lo último que sucede en la historia.',0,'activo','developer','2021-10-10','developer','2021-10-10',16);
INSERT respuesta values(59,'Flix volvió al cuento para llevar a toda su familia a casa del niño.','Flix sí volvió al cuento, pero no llevó a su familia de regreso. ¡Lee otra vez el texto!',0,'activo','developer','2021-10-10','developer','2021-10-10',16);
INSERT respuesta values(60,'Flix se entristeció porque extrañaba a su familia.','Flix se puso triste, entonces decidió volver con su familia y ese es casi el final de la historia. Pero esta respuesta no es la correcta.',0,'activo','developer','2021-10-10','developer','2021-10-10',16);
INSERT respuesta values(61,'Flix volvió al cuento y a veces vuelve a visitar a Mateo. ','¡Muy bien! Así termina esta historia.',1,'activo','developer','2021-10-10','developer','2021-10-10',16);
INSERT respuesta values(62,'Los cocos.','¡La historia nunca menciona los cocos! Así que ésta es la respuesta correcta.',1,'activo','developer','2021-10-10','developer','2021-10-10',17);
INSERT respuesta values(63,'El helado.','Recuerda que Mateo le convidaba a Flix de su helado.',0,'activo','developer','2021-10-10','developer','2021-10-10',17);
INSERT respuesta values(64,'Las nueces.','A Mateo y a Flix les encantaba comer nueces.',0,'activo','developer','2021-10-10','developer','2021-10-10',17);
INSERT respuesta values(65,'Los cacahuates. ','A Mateo y a Flix les gustaba comer cacahuates juntos. ',0,'activo','developer','2021-10-10','developer','2021-10-10',17);
INSERT respuesta values(66,'Los elefantes de los cuentos pueden salir de la pantalla.','Los personajes de los cuentos no pueden estar en el mundo real.',0,'activo','developer','2021-10-10','developer','2021-10-10',18);
INSERT respuesta values(67,'Algunos elefantes viven en Tailandia.','¡Así es! En los bosques de Tailandia podemos encontrar elefantes.',1,'activo','developer','2021-10-10','developer','2021-10-10',18);
INSERT respuesta values(68,'Los elefantes comen helado.','Los elefantes se alimentan de plantas y hierbas, ¡nunca comen helado!',0,'activo','developer','2021-10-10','developer','2021-10-10',18);
INSERT respuesta values(69,'Los elefantes disfrutan leer cuentos.','Los elefantes no saben leer.',0,'activo','developer','2021-10-10','developer','2021-10-10',18);
INSERT respuesta values(70,'Escribir las ideas que vengan a la mente mientras se lee. ','Esto no sería útil pues no te concentrarías en el orden de los sucesos. ',0,'activo','developer','2021-10-10','developer','2021-10-10',19);
INSERT respuesta values(71,'Numerar las acciones más importantes de la historia. ','¡Ésta es una buena idea! Así podrás organizar con facilidad lo que sucede en cada momento. ',1,'activo','developer','2021-10-10','developer','2021-10-10',19);
INSERT respuesta values(72,'Escribir la historia como la recuerdes cuando acabes de leerla. ','¡Cuidado! Si lo haces así, podrías confundirte al tratar de recordarlo todo.',0,'activo','developer','2021-10-10','developer','2021-10-10',19);
INSERT respuesta values(73,'Contarle la historia a alguien después de leerla. ','Aunque al compartir una historia la recuerdas, tal vez te equivoques en el orden de los sucesos, es mejor numerarlos.',0,'activo','developer','2021-10-10','developer','2021-10-10',19);
INSERT respuesta values(74,'n/a','¡Bien hecho! Recuerda que el desarrollo de las habilidades socioemocionales debe ser constante, por lo que te invitamos a seguir escribiendo al respecto. ',1,'activo','developer','2021-10-10','developer','2021-10-10',20);
INSERT respuesta values(75,'Se le antojó comer un chocolate.','Esta fue la causa por la que Lupita vio si le alcanzaba el dinero, así que sucedió antes. ',0,'activo','developer','2021-10-10','developer','2021-10-10',21);
INSERT respuesta values(76,'Pensó en tomar un chocolate sin que nadie la viera.','¡Correcto! Cuando vio que el dinero no le alcanzaba, Lupita pensó en tomar el chocolate, así que eso sucedió después. ',1,'activo','developer','2021-10-10','developer','2021-10-10',21);
INSERT respuesta values(77,'Fue a la tienda a comprar lo que le pidió su mamá.','Esto fue lo primero que pasó, así que esta respuesta no es correcta. ',0,'activo','developer','2021-10-10','developer','2021-10-10',21);
INSERT respuesta values(78,'Le explicó al encargado que no tenía suficiente dinero.','Lupita nunca hizo eso, aunque era una buena idea expresar lo que pensaba. ',0,'activo','developer','2021-10-10','developer','2021-10-10',21);
INSERT respuesta values(79,'Luis puede copiar el en examen porque la maestra tuvo que salir del salón. ','¡Muy bien! Esta situación se parece a la de Lupita porque Luis puede hacer algo incorrecto sin que nadie lo sepa. ',1,'activo','developer','2021-10-10','developer','2021-10-10',22);
INSERT respuesta values(80,'Mónica hizo un plan para tomar dinero de la bolsa de su mamá.','Esta situación no se parece, Mónica está planeando cómo hacer algo indebido. ',0,'activo','developer','2021-10-10','developer','2021-10-10',22);
INSERT respuesta values(81,'Laura encontró una cartera en la calle y no sabe a quién dársela.','Esta situación es muy diferente, pues Laura quiere hacer una acción correcta. ',0,'activo','developer','2021-10-10','developer','2021-10-10',22);
INSERT respuesta values(82,'José se quedó solo en su casa y decidió armar un rompecabezas.','Esta situación no se parece porque, aunque nadie ve a José, sus acciones no dañan a otras personas.',0,'activo','developer','2021-10-10','developer','2021-10-10',22);
INSERT respuesta values(83,'que todas las personas sean iguales','Aunque su nombre parece indicar eso, no es para lo que sirve. ',0,'activo','developer','2021-10-10','developer','2021-10-10',23);
INSERT respuesta values(84,'saber si algo afecta de manera negativa a otros','¡Exactamente! Esta es una de las ideas principales del texto. ',1,'activo','developer','2021-10-10','developer','2021-10-10',23);
INSERT respuesta values(85,'que todas las personas digan lo mismo','¡No! Quizá el nombre te hizo pensar en eso, pero no se usa así. ',0,'activo','developer','2021-10-10','developer','2021-10-10',23);
INSERT respuesta values(86,'hacer respuestas correctas','Al usar esta regla haces respuestas, pero ese no es su uso sino saber si actuamos correctamente.',0,'activo','developer','2021-10-10','developer','2021-10-10',23);
INSERT respuesta values(87,'Si todas las personas hacen esa acción, alguien se vería afectado. ','¡Correcto! Así es como se usa esa regla. Esta es una de las ideas principales del texto.',1,'activo','developer','2021-10-10','developer','2021-10-10',24);
INSERT respuesta values(88,'Si todas las personas hacen esa acción, nadie se vería afectado.','Eso es lo que sucede cuando se aplica bien la regla, para saber si una acción es correcta. ',0,'activo','developer','2021-10-10','developer','2021-10-10',24);
INSERT respuesta values(89,'Si nadie realiza esa acción, alguien se vería afectado.','¡No precisamente! la “regla para todos” es respuestarte qué pasaría si todos hicieran algo.',0,'activo','developer','2021-10-10','developer','2021-10-10',24);
INSERT respuesta values(90,'Si todos llevan a cabo esa acción, no sucede nada. ','Recuerda que una acción es incorrecta cuando afecta a otros. ',0,'activo','developer','2021-10-10','developer','2021-10-10',24);
INSERT respuesta values(91,'Pablo come una paleta y tira la envoltura al suelo.','Si todas las personas tiraran las envolturas de los dulces esto dañaría el medio ambiente.',0,'activo','developer','2021-10-10','developer','2021-10-10',25);
INSERT respuesta values(92,'Raquel copia al contestar un examen.','Si todos los estudiantes copiaran en los exámenes entonces nadie sabría qué ha aprendido de verdad.',0,'activo','developer','2021-10-10','developer','2021-10-10',25);
INSERT respuesta values(93,'Raúl escribe un diario todos los días.','Si todas las personas escribieran un diario no afectarían a nadie, así que es una acción correcta. ¡Esta es una de las ideas principales de la lectura!',1,'activo','developer','2021-10-10','developer','2021-10-10',25);
INSERT respuesta values(94,'Ana tira a la basura la comida que no le gusta.','Si todas las personas tiraran la comida a la basura, el desperdicio sería malo para otras personas y para el medio ambiente. ',0,'activo','developer','2021-10-10','developer','2021-10-10',25);
INSERT respuesta values(95,'Que, si tomaba el chocolate, todas las demás personas harían lo mismo.','¡No! Esas no serían las consecuencias de su acción, solamente lo que imaginó al pensar en “la regla para todos”. ',0,'activo','developer','2021-10-10','developer','2021-10-10',26);
INSERT respuesta values(96,'Que, si hacía caso de la regla, era correcto tomar el chocolate.','No precisamente. Esta oración se refiere a lo que pasaría si ella tomaba el chocolate y no fuera una acción que afectara a otros.',0,'activo','developer','2021-10-10','developer','2021-10-10',26);
INSERT respuesta values(97,'Que, si tomaba el chocolate, su acción le causaría problemas.','¡Así es! La oración dice que si Lupita pensó qué pasaría si tomaba el chocolate sin permiso, podría recibir un castigo, afectaría al encargado o que no le gustaría que alguien tomara sus dulces.',1,'activo','developer','2021-10-10','developer','2021-10-10',26);
INSERT respuesta values(98,'Que, si decía que quería un chocolate, su mamá se lo compraría.','Esta oración se refiere a lo que podría imaginar, pero no sucedió, nunca pidió los chocolates.',0,'activo','developer','2021-10-10','developer','2021-10-10',26);
INSERT respuesta values(99,'A veces, saber si algo está bien o mal puede ser confuso.','Ésta no es la idea principal de la lectura, aunque se relaciona con ella. ',0,'activo','developer','2021-10-10','developer','2021-10-10',27);
INSERT respuesta values(100,'Lupita usó “La regla para todos” para imaginar lo que sucedería si todos tomáramos los chocolates que se venden.','Esta oración nos da un ejemplo sobre la idea principal, pero no la explica. ',0,'activo','developer','2021-10-10','developer','2021-10-10',27);
INSERT respuesta values(101,'“La regla para todos” consiste en preguntarte “¿qué sucedería si todas las personas del mundo hicieran lo mismo que tengo ganas de hacer ahora?”.','¡Muy bien! Esta oración explica la idea principal del texto.',1,'activo','developer','2021-10-10','developer','2021-10-10',27);
INSERT respuesta values(102,'¡Ahora ya conoces “la regla para todos”!','Esta oración no nos da información sobre la idea principal.',0,'activo','developer','2021-10-10','developer','2021-10-10',27);
INSERT respuesta values(103,'sólo sirve para los niños','¡No es así! Como su nombre lo dice su nombre, es para todos. ',0,'activo','developer','2021-10-10','developer','2021-10-10',28);
INSERT respuesta values(104,'es muy útil para saber quiénes son buenas personas','No es así, la regla no se usa para juzgar a otros, sino nuestras propias acciones. ',0,'activo','developer','2021-10-10','developer','2021-10-10',28);
INSERT respuesta values(105,'no funciona porque no es fácil de seguir','Es fácil hacerse una sola respuesta para saber si nuestras acciones son correctas. ',0,'activo','developer','2021-10-10','developer','2021-10-10',28);
INSERT respuesta values(106,'nos ayuda a saber si nuestras acciones son correctas','Esto es para lo que sirve “la regla para todos”. ¡Muy bien! ',1,'activo','developer','2021-10-10','developer','2021-10-10',28);
INSERT respuesta values(107,'Es aquella idea con la que se relacionan todas las demás que aparecen en el texto.','¡Exacto! En un texto, todas las ideas están relacionadas siempre con la idea principal.',1,'activo','developer','2021-10-10','developer','2021-10-10',29);
INSERT respuesta values(108,'Es la idea que aparece en el primer párrafo.','¡No es así! Aunque la idea principal suele aparecer al principio de los textos, no siempre va a estar en el primer párrafo. ',0,'activo','developer','2021-10-10','developer','2021-10-10',29);
INSERT respuesta values(109,'Es la idea que parece más interesante en un texto. ','Es probable que la idea principal de un texto llame tu atención más que las ideas secundarias, pero esto no es una regla para definir cuál es la idea principal.',0,'activo','developer','2021-10-10','developer','2021-10-10',29);
INSERT respuesta values(110,'Es la idea con la que concluye el texto. ','No siempre es así. A veces los textos terminan repitiendo la idea principal para reforzarla, pero no siempre está la idea principal al final. ',0,'activo','developer','2021-10-10','developer','2021-10-10',29);
INSERT respuesta values(111,'n/a','¡Bien hecho! Recuerda que el desarrollo de las habilidades socioemocionales debe ser constante, por lo que te invitamos a seguir escribiendo al respecto. ',1,'activo','developer','2021-10-10','developer','2021-10-10',30);
INSERT respuesta values(112,'Es el nombre de la lagartija.','Aunque hay personajes con nombres muy raros, en este caso esas letras no son el nombre de la lagartija.',0,'activo','developer','2021-10-10','developer','2021-10-10',31);
INSERT respuesta values(113,'Es el sonido que hacemos cuando tenemos mucho frío.','¡Muy bien! Estas letras forman una onomatopeya, quiere decir que imita un sonido que hacemos cuando sentimos frío, en este caso. ',1,'activo','developer','2021-10-10','developer','2021-10-10',31);
INSERT respuesta values(114,'Es una palabra que dicen las lagartijas. ','Aunque no sabemos cómo hablan las lagartijas, estas letras se refieren a un sonido.',0,'activo','developer','2021-10-10','developer','2021-10-10',31);
INSERT respuesta values(115,'Es el sonido que hacemos cuando nos espanta una lagartija.','Sí es un sonido, pero no precisamente cuando nos espantamos sino cuando los dientes tiemblan de frío.',1,'activo','developer','2021-10-10','developer','2021-10-10',31);
INSERT respuesta values(116,'El atardecer','La lagartija estaba esperando que saliera el Sol, lo cual no sucede por la tarde.',0,'activo','developer','2021-10-10','developer','2021-10-10',32);
INSERT respuesta values(117,'Al mediodía','Si hubiera sido el mediodía el Sol hubiera calentado a la lagartija.',0,'activo','developer','2021-10-10','developer','2021-10-10',32);
INSERT respuesta values(118,'Al amanecer','¡Claro! La lagartija tenía frío porque no había salido el Sol, pero poco después aparecería para calentarla. ',1,'activo','developer','2021-10-10','developer','2021-10-10',32);
INSERT respuesta values(119,'La noche','No es así. Si fuera de noche, la lagartija hubiera tenido que esperar al Sol durante muchas horas.',0,'activo','developer','2021-10-10','developer','2021-10-10',32);
INSERT respuesta values(120,'Absorber vitaminas','Así es, el Sol le ayuda a aprovechar las vitaminas en su cuerpo.',1,'activo','developer','2021-10-10','developer','2021-10-10',33);
INSERT respuesta values(121,'Sentir frío','¡No! El Sol siempre da calor.',0,'activo','developer','2021-10-10','developer','2021-10-10',33);
INSERT respuesta values(122,'Sentir abrigo','El Sol le calienta, pero no le da abrigo para cubrirse. ',0,'activo','developer','2021-10-10','developer','2021-10-10',33);
INSERT respuesta values(123,'Obtener alimento','El Sol le da calor y aprovecha las vitaminas, pero no le da alimento.',0,'activo','developer','2021-10-10','developer','2021-10-10',33);
INSERT respuesta values(124,'Sol','El Sol no es una sustancia, pero los huesos sí lo necesitan para crecer. ',0,'activo','developer','2021-10-10','developer','2021-10-10',34);
INSERT respuesta values(125,'vitaminas','Las vitaminas son muy importantes para el cuerpo, pero no es lo que los huesos usan para crecer. ',0,'activo','developer','2021-10-10','developer','2021-10-10',34);
INSERT respuesta values(126,'leche','La leche sirve para que los huesos crezcan porque tiene calcio, ¡pero las lagartijas no toman leche! ',0,'activo','developer','2021-10-10','developer','2021-10-10',34);
INSERT respuesta values(127,'calcio','¡Muy bien! El calcio es la sustancia que usan los huesos para crecer y el Sol ayuda a que se quede pegado a ellos. ',1,'activo','developer','2021-10-10','developer','2021-10-10',34);
INSERT respuesta values(128,'Porque queman la piel.','¡Así es! Es muy importante no exponernos durante mucho tiempo al Sol, como hacía la lagartija porque nuestra piel se lastima.',1,'activo','developer','2021-10-10','developer','2021-10-10',35);
INSERT respuesta values(129,'Porque nos dan demasiado calcio.','¡No es así! El poema nunca dice que eso sea un problema. ',0,'activo','developer','2021-10-10','developer','2021-10-10',35);
INSERT respuesta values(130,'Porque nos quitan vitaminas del cuerpo.','Recuerda que el Sol ayuda a fijar las vitaminas, aunque no se debe tomar en exceso. ',0,'activo','developer','2021-10-10','developer','2021-10-10',35);
INSERT respuesta values(131,'Porque nos pueden enfermar.','El poema no dice que esto pueda suceder. ',0,'activo','developer','2021-10-10','developer','2021-10-10',35);
INSERT respuesta values(132,'((ILUSTRACIÓN: CL_G1_B1_S16_RI22_NAT_De panza01 Viñeta de una sombrilla))','La lagartija podía usar una hoja como sombrilla, así que esta respuesta es incorrecta. ',0,'activo','developer','2021-10-10','developer','2021-10-10',36);
INSERT respuesta values(133,'((ILUSTRACIÓN: CL_G1_B1_S16_RI22_NAT_De panza02 viñeta de Una hoja)) ','¡Muy bien! La lagartija podía cubrirse con una hoja para protegerse de los rayos del Sol. ',1,'activo','developer','2021-10-10','developer','2021-10-10',36);
INSERT respuesta values(134,'((ILUSTRACIÓN: CL_G1_B1_S16_RI22_NAT_De panza03 viñeta de Un sombrero))','El poema nunca dice que usara sombrero. ',0,'activo','developer','2021-10-10','developer','2021-10-10',36);
INSERT respuesta values(135,'((ILUSTRACIÓN: CL_G1_B1_S16_RI22_NAT_De panza04 Viñeta de Una roca))','La lagartija se subía a una roca para tomar el Sol, no se escondía debajo de ella.',0,'activo','developer','2021-10-10','developer','2021-10-10',36);
INSERT respuesta values(136,'También usaría una hoja.','Una hoja puede proteger a la lagartija, pero no a ti porque eres mucho más grande que ella. ',0,'activo','developer','2021-10-10','developer','2021-10-10',37);
INSERT respuesta values(137,'Me pondría protector solar.','¡Muy bien! Los bloqueadores protegen contra los rayos Solares, mientras aprovechas los beneficios de asolearte. ',1,'activo','developer','2021-10-10','developer','2021-10-10',37);
INSERT respuesta values(138,'No saldría de la casa.','Si no sales de casa, no podrás disfrutar los beneficios del Sol como lo hace la lagartija.',0,'activo','developer','2021-10-10','developer','2021-10-10',37);
INSERT respuesta values(139,'Tomaría mucha agua.','Aunque es bueno tomar agua mientras te asoleas, la lagartija quería protegerse de los rayos del Sol. ',0,'activo','developer','2021-10-10','developer','2021-10-10',37);
INSERT respuesta values(140,'Las iguanas son amigas de las lindas lagartijas.','Aunque en estos versos se mencionan a las lagartijas, también se habla de las iguanas que no aparece en el poema.',0,'activo','developer','2021-10-10','developer','2021-10-10',38);
INSERT respuesta values(141,'Muchos regalos da el Sol luz, alegría y calor.','Esta es la mejor opción porque habla de los beneficios del Sol, al igual que el poema de la lagartija. ',1,'activo','developer','2021-10-10','developer','2021-10-10',38);
INSERT respuesta values(142,'Bajo el Sol viven mil animalitos que de muchas formas son. ','Esta opción menciona personajes que no aparecen en el poema. ',0,'activo','developer','2021-10-10','developer','2021-10-10',38);
INSERT respuesta values(143,'Ya la noche está cayendo y la luna va naciendo. ','En estos versos se habla de la Luna, no es una buena opción para añadir al poema.',0,'activo','developer','2021-10-10','developer','2021-10-10',38);
INSERT respuesta values(144,'motivación','Aunque tengas motivación puedes distraerte si no te enfocas.',0,'activo','developer','2021-10-10','developer','2021-10-10',39);
INSERT respuesta values(145,'ilusión','Quizá te ilusione encontrar nueva información, pero so es suficiente para encontrar información específica.',0,'activo','developer','2021-10-10','developer','2021-10-10',39);
INSERT respuesta values(146,'atención','¡Así es! Para encontrar información debes prestar atención a todas las palabras.',1,'activo','developer','2021-10-10','developer','2021-10-10',39);
INSERT respuesta values(147,'sabiduría','La sabiduría te servirá para relacionar lo que leas y entenderlo, pero no para encontrar la información que estás buscando.  ',0,'activo','developer','2021-10-10','developer','2021-10-10',39);
INSERT respuesta values(148,'n/a','¡Bien hecho! Recuerda que el desarrollo de las habilidades socioemocionales debe ser constante, por lo que te invitamos a seguir escribiendo al respecto. ',1,'activo','developer','2021-10-10','developer','2021-10-10',40);

INSERT ciudad values(1,'México','activo','developer','2021-10-10','developer','2021-10-10',1);

INSERT escuela values(1,'Jaime Torres Bodet','activo','developer','2021-10-10','developer','2021-10-10',1);
INSERT escuela values(2,'Manuel Ávila Camacho','activo','developer','2021-10-10','developer','2021-10-10',1);

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

INSERT usuario values(1,'jordán','Dimas','Hernández','Jordan-1-A-2021','Jordan@developer.com','123456789','activo','developer','2021-10-10','developer','2021-10-10',1,1);
INSERT usuario values(2,'Baruch','Gonzáles','Hernández','Baruch-1-A-2021','Baruch@developer.com','123456789','activo','developer','2021-10-10','developer','2021-10-10',1,1);
INSERT usuario values(3,'juan','cano','Martínez','usuario_prueba1','juan@developer.com','codetidy123','activo','developer','2021-10-10','developer','2021-10-10',1,1);
INSERT usuario values(4,'fernanda','Yanez','Galindo','usuario_prueba2','fernanda@developer.com','codetidy456','activo','developer','2021-10-10','developer','2021-10-10',1,1);
INSERT usuario values(5,'Admin01','Admin','01','Admin01','Admin01@developer.com','123456789','activo','developer','2021-10-10','developer','2021-10-10',1,1);
INSERT usuario values(6,'Admin02','Admin','02','Admin02','Admin02@developer.com','123456789','activo','developer','2021-10-10','developer','2021-10-10',1,1);
INSERT usuario values(7,'Admin03','Admin','03','Admin03','Admin03@developer.com','123456789','activo','developer','2021-10-10','developer','2021-10-10',1,1);

INSERT inscripcion VALUES(1,'developer','activo','2021-10-10','developer','2021-10-10',1,1,1);
INSERT inscripcion VALUES(2,'developer','activo','2021-10-10','developer','2021-10-10',1,2,2);
INSERT inscripcion VALUES(3,'developer','activo','2021-10-10','developer','2021-10-10',1,3,1);
INSERT inscripcion VALUES(4,'developer','activo','2021-10-10','developer','2021-10-10',1,4,2);
INSERT inscripcion VALUES(5,'developer','activo','2021-10-10','developer','2021-10-10',1,5,1);
INSERT inscripcion VALUES(6,'developer','activo','2021-10-10','developer','2021-10-10',1,6,2);
INSERT inscripcion VALUES(7,'developer','activo','2021-10-10','developer','2021-10-10',1,7,1);


INSERT actividad_inscripcion VALUES(1,'developer','activo','2021-10-10','developer','2021-10-10',1,1);
INSERT actividad_inscripcion VALUES(2,'developer','activo','2021-10-10','developer','2021-10-10',1,2);
INSERT actividad_inscripcion VALUES(3,'developer','activo','2021-10-10','developer','2021-10-10',1,3);
INSERT actividad_inscripcion VALUES(4,'developer','activo','2021-10-10','developer','2021-10-10',1,4);

INSERT actividad_inscripcion VALUES(5,'developer','activo','2021-10-10','developer','2021-10-10',2,1);
INSERT actividad_inscripcion VALUES(6,'developer','activo','2021-10-10','developer','2021-10-10',2,2);
INSERT actividad_inscripcion VALUES(7,'developer','activo','2021-10-10','developer','2021-10-10',2,3);
INSERT actividad_inscripcion VALUES(8,'developer','activo','2021-10-10','developer','2021-10-10',2,4);

INSERT actividad_inscripcion VALUES(9,'developer','activo','2021-10-10','developer','2021-10-10',3,1);
INSERT actividad_inscripcion VALUES(10,'developer','activo','2021-10-10','developer','2021-10-10',3,2);
INSERT actividad_inscripcion VALUES(11,'developer','activo','2021-10-10','developer','2021-10-10',3,3);
INSERT actividad_inscripcion VALUES(12,'developer','activo','2021-10-10','developer','2021-10-10',3,4);

INSERT actividad_inscripcion VALUES(13,'developer','activo','2021-10-10','developer','2021-10-10',4,1);
INSERT actividad_inscripcion VALUES(14,'developer','activo','2021-10-10','developer','2021-10-10',4,2);
INSERT actividad_inscripcion VALUES(15,'developer','activo','2021-10-10','developer','2021-10-10',4,3);
INSERT actividad_inscripcion VALUES(16,'developer','activo','2021-10-10','developer','2021-10-10',4,4);

INSERT actividad_inscripcion VALUES(17,'developer','activo','2021-10-10','developer','2021-10-10',5,1);
INSERT actividad_inscripcion VALUES(18,'developer','activo','2021-10-10','developer','2021-10-10',5,2);
INSERT actividad_inscripcion VALUES(19,'developer','activo','2021-10-10','developer','2021-10-10',5,3);
INSERT actividad_inscripcion VALUES(20,'developer','activo','2021-10-10','developer','2021-10-10',5,4);

INSERT actividad_inscripcion VALUES(21,'developer','activo','2021-10-10','developer','2021-10-10',6,1);
INSERT actividad_inscripcion VALUES(22,'developer','activo','2021-10-10','developer','2021-10-10',6,2);
INSERT actividad_inscripcion VALUES(23,'developer','activo','2021-10-10','developer','2021-10-10',6,3);
INSERT actividad_inscripcion VALUES(24,'developer','activo','2021-10-10','developer','2021-10-10',6,4);

INSERT actividad_inscripcion VALUES(25,'developer','activo','2021-10-10','developer','2021-10-10',7,1);
INSERT actividad_inscripcion VALUES(26,'developer','activo','2021-10-10','developer','2021-10-10',7,2);
INSERT actividad_inscripcion VALUES(27,'developer','activo','2021-10-10','developer','2021-10-10',7,3);
INSERT actividad_inscripcion VALUES(28,'developer','activo','2021-10-10','developer','2021-10-10',7,4);



