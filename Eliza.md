# PROYECTO ELIZA

El siguiente proyecto "eliza" es un chatbot con ciertos conocimientos y con el que puedes interactuar.
**puntos a tener en cuenta con eliza:**

- para iniciar una conversion con ella se debe de poner eliza con un punto; (eliza.).
- tiene conocimiento sobre la enfermadad **gonorrea.**
- tiene conocimiento sobre pokemon.
- su conocimiento en pokemon es sobre las evoluciones de ciertos pokemones, involuciones de ciertos pokemones y las debilidades y fortalezas decada tipo de  pokemon.
- tienes que seguir una regla para que te pueda responder, en caso de que alguna palabra dicah por ti no sea correcta te responderá que expliques un poco más.
- para terminar la conversación con ella basta con decir **Adios**.


~~~
eliza:-	writeln('Hola , mi nombre es  Eliza tu  chatbot,
	tengo informacion sobre la enfermedad herpes y pokemon,
	por favor ingresa tu consulta,
	usar solo minúsculas sin . al final:'),
	readln(Input),
	eliza(Input),!.
eliza(Input):- Input == ['Adios'],
	writeln('Adios. espero poder verte ayudado.'), !.
eliza(Input):- Input == ['Adios', '.'],
	writeln('Adios. espero poder verte ayudado.'), !.
eliza(Input) :-
	template(Stim, Resp, IndStim),
	match(Stim, Input),
	% si he llegado aquí es que he
	% hallado el template correcto:
	replace0(IndStim, Input, 0, Resp, R),
	writeln(R),
	readln(Input1),
	eliza(Input1), !.

template([hola, mi, nombre, es, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [4]).
template([buendia, mi, nombre, es, s(_), '.'], ['buen dia', 'Como', estas, tu, 0, '?'], [4]).
template([hola, ',', mi, nombre, es, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [5]).
template([buendia, ',', mi, nombre, es, s(_), '.'], ['Buendia', 'Como', estas, tu, 0, '?'], [5]).
template([hola, _], ['Hola', 'como', estas, tu, '?'], []).
template([buendia, _], ['Buendia', 'Como', estas, tu, '?'], []).
template([yo, s(_), soy, s(_),'.'], [por, que, 0, eres, 1, '?'], [1, 4]).
template([yo, s(_), a, ti, '.'], [por, que, tu, me,  0, a, mi,'?'], [1]).
template([yo, soy, s(_),'.'], [porque, eres, tu, 0, '?'], [2]).

% pregunta algo que le gusta a eliza
template([te, gustan, las, s(_), _], [flagLike], [3]).
template([te, gustan, los, s(_), _], [flagLike], [3]).

% pregunta algo que hace eliza
template([tu, eres, s(_), _], [flagIs], [2]).
% pregunta algo que es eliza
template([que, eres, tu, s(_)], [flagIs], [3]).
template([eres, s(_), '?'], [flagIs], [1]).
template([como, estas, tu, '?'], [yo, estoy, bien, ',', gracias, por, preguntar, '.'], []).

template([yo, pienso, que, _], [bueno, esa, es, tu, opinion], []).
template([porque, _], [esa, no, es, una, buena, razon, '.'], []).
template([yo, tengo, s(_), con, s(_), '.'], ['tu', tienes, que, lidiar, con, tu, 0, y, tu, 1, de, una, manera, madura, '.'], [2, 4]).
template([i, s(_),  _], [i, puedo, recomendarte, un, libro, sobre, este, problema], []).
template([por, favor, s(_), _], ['No', yo, no, puedo, ayudarte, ',', yo, soy, solo, una, maquina], []). 
template([dime, un, a, s(_), _], ['No', i, can, not, ',', yo, soy, mala, para, eso], []).

template([eliza, eres, una, s(_), '?'], [flagEs], [3]).


% aqui se empieza a hacer los sintomas del herpes
template([s(_), es, un, sintoma, '?'], [flagSint], [0]).
template([el, s(_), es, un, sintoma, '?'], [flagSint], [1]).
template([la, s(_), es, un, sintoma, '?'], [flagSint], [1]).
template([las, s(_), es, un, sintoma, '?'], [flagSint], [1]).
template([los, s(_), es, un, sintoma, '?'], [flagSint], [1]).
template([tengo, s(_), es, malo], [flagSint], [1]).
template([tengo, s(_), es, un, sintoma, '?'], [flagSint], [1]).

% aqui se empieza a hacer los sintomas del herpes 2
template([tengo, s(_), y, s(_), puede, ser, herpes, '?'], [flagSint1], [1, 3]).
template([los, sintomas, s(_), y, s(_), son, del, herpes, '?'], [flagSint1], [2, 4]).
template([s(_), y, s(_), son, sintomas, '?'], [flagSint1], [0, 2]).
template([s(_), y, s(_), son, sintomas, del, herpes, '?'], [flagSint1], [0, 2]).


% aqui se empieza a hacer los sintomas del herpes 3
template([tengo, s(_), s(_), y, s(_), puede, ser, herpes, '?'], [flagSint2], [1, 2, 4]).
template([los, sintomas, s(_), s(_), y, s(_), son, del, herpes, '?'], [flagSint2], [2, 3, 5]).
template([s(_), s(_), y, s(_), son, sintomas, '?'], [flagSint2], [0, 1, 3]).
template([s(_), s(_), y, s(_), son, sintomas, del, herpes, '?'], [flagSint2], [0, 1, 3]).


template([como, se, si, tengo, herpes, '?'], [la, mejor, forma, de, saber, es, llendo, al, medico, a, hacerte, estudios, pero, existen, sintomas], []).
template([cuales, son, los, sintomas, del, herpes, '?'], [los, principales, sintomas, del, herpes, son, :, fiebre, ampollas, ulceras, picazon, y, dolor_corporal], []).
template([cuales, son, los, sintomas, del, herpes], [los, principales, sintomas, del, herpes, son, :, fiebre, ampollas, ulceras, picazon, y, dolor_corporal], []).
template([que, sintomas, tiene, el, herpes, '?'], [los, principales, sintomas, del, herpes, son, :, fiebre, ampollas, ulceras, picazon, y, dolor_corporal, entre, otros], []).



% lugares donde salen llagas
template([las, llagas, en, el, s(_), es, un, sintoma, '?'], [flagGallas], [4]).
template([las, llagas, en, la, s(_), es, un, sintoma, '?'], [flagGallas], [4]).
template([las, llagas, en, los, s(_), es, un, sintoma, '?'], [flagGallas], [4]).
template([tener, llagas, en, el, s(_), es, un, sintoma, '?'], [flagGallas], [4]).
template([tener, llagas, en, la, s(_), es, un, sintoma, '?'], [flagGallas], [4]).
template([tener, llagas, en, los, s(_), es, un, sintoma, '?'], [flagGallas], [4]).
template([llagas, en, el, s(_), es, un, sintoma, '?'], [flagGallas], [3]).
template([llagas, en, la, s(_), es, un, sintoma, '?'], [flagGallas], [3]).
template([llagas, en, los, s(_), es, un, sintoma, '?'], [flagGallas], [3]).
template([las, llagas, en, el, s(_), es, herpes, '?'], [flagGallas], [4]).
template([las, llagas, en, la, s(_), es, herpes, '?'], [flagGallas], [4]).
template([las, llagas, en, los, s(_), es, herpes, '?'], [flagGallas], [4]).
template([tener, llagas, en, el, s(_), es, herpes, '?'], [flagGallas], [4]).
template([tener, llagas, en, la, s(_), es, herpes, '?'], [flagGallas], [4]).
template([tener, llagas, en, los, s(_), es, herpes, '?'], [flagGallas], [4]).
template([llagas, en, el, s(_), es, herpes, '?'], [flagGallas], [3]).
template([llagas, en, la, s(_), es, herpes, '?'], [flagGallas], [3]).
template([llagas, en, los, s(_), es, herpes, '?'], [flagGallas], [3]).

% como prevenirlo
template([como, puedo, prevenir, el, herpes, '?'], [las, mejores, formas, de, prevenirlo, son, teniendo, pareja, sexual, estable, usando, preservativos, y, no, tener, relaciones, con, alguien, con, sintomas], []).
template([como, puedo, prevenir, la, herpes, '?'], [las, mejores, formas, de, prevenirlo, son, teniendo, pareja, sexual, estable, usando, preservativos, y, no, tener, relaciones, con, alguien, con, sintomas], []).
template([como, puedo, prevenir, la, enfermedad, del, herpes, '?'], [las, mejores, formas, de, prevenirlo, son, teniendo, pareja, sexual, estable, usando, preservativos, y, no, tener, relaciones, con, alguien, con, sintomas], []).
template([como, puedo, prevenir, la, enfermedad, herpes, '?'], [las, mejores, formas, de, prevenirlo, son, teniendo, pareja, sexual, estable, usando, preservativos, y, no, tener, relaciones, con, alguien, con, sintomas], []).
template([como, prevenir, el, herpes, '?'], [las, mejores, formas, de, prevenirlo, son, teniendo, pareja, sexual, estable, usando, preservativos, y, no, tener, relaciones, con, alguien, con, sintomas], []).

% especialista
template([que, especialista, me, puede, diagnosticar, herpes, '?'], [cualquier, doctor], []).
template([especialista, para, el, herpes, '?'], [cualquier, doctor], []).
template([que, especialista, diagnostica, el, herpes, '?'], [cualquier, doctor], []).

% diagnostico
template([como, se, verifica, si, lo, tengo, '?'], [con, estudios, clinicos], []).
template([como, estar, seguro, si, lo, tengo, '?'], [con, estudios, clinicos], []).
template([como, se, diagnostica, '?'], [con, estudios, clinicos], []).
template([como, se, verifica, si, alguien, lo, tiene, '?'], [con, estudios, clinicos], []).
template([como, estar, seguro, si, alguien, lo, tiene, '?'], [con, estudios, clinicos], []).

% cura/tratamiento:
template([el, herpes, tiene, cura, '?'], [actualemnte, no, existe, cura, para, el, herpes, pero, si, tratamiento, que, puede, ayudar, a, controlar, los, sintomas, y, reducir, la, posibilidad, de, que, vuelvan, a, aparecer], []).
template([cual, es, la, cura, del, herpes, '?'], [actualemnte, no, existe, cura, para, el, herpes, pero, si, tratamiento, que, puede, ayudar, a, controlar, los, sintomas, y, reducir, la, posibilidad, de, que, vuelvan, a, aparecer], []).

% evoluciones de pokemon
template([eliza, cual, es, la, evolucion, de, s(_)], [evoPok],[6]).
template([eliza, cual, es, la, evolucion, de, nidoran], [si, el, nidoran, es, macho, sera, nidorino, y, si, es, hembra, sera, nidorina],[]).
template([eliza, cual, es, la, evolucion, de, gloom], [la, evolucion, de, gloom, varia, si, evoluciona, con, piedra, hoja, sera, vileplume, y, con, piedra, solar, sera, bellossom],[]).

% involucion de pokemon
template([eliza, quien, evoluciona, a, s(_)], [invoPok],[4]).

% tipos
template([eliza, cual, es, el, tipo, de, s(_)], [tipoPok],[6]).
template([eliza, que, tipo, de, pokemon, es, s(_)], [tipoPok],[6]).

% debilidades
template([eliza, a, que, es, debil, el, pokemon, s(_)], [debPok],[7]).
template([eliza, a, que, tipo, de, ataques, es, debil, el, pokemon, s(_)], [debPok],[10]).
template([eliza, cual, es, la, debilidad, de, los, pokemon, tipo, planta], [los, pokemon, tipo, planta, son, debiles, a, los, ataques, tipo, bicho, fuego, volador, hielo, y, veneno],[]).
template([eliza, cual, es, la, debilidad, de, los, pokemon, tipo, agua], [los, pokemon, tipo, agua, son, debiles, a, los, ataques, tipo, electrico, y, planta],[]).
template([eliza, cual, es, la, debilidad, de, los, pokemon, tipo, fuego], [los, pokemon, tipo, fuego, son, debiles, a, los, ataques, tipo, tierra, roca, y, agua],[]).
template([eliza, cual, es, la, debilidad, de, los, pokemon, tipo, volador], [los, pokemon, tipo, volador, son, debiles, a, los, ataques, tipo, planta, hielo, y, agua],[]).
template([eliza, cual, es, la, debilidad, de, los, pokemon, tipo, tierra], [los, pokemon, tipo, tierra, son, debiles, a, los, ataques, tipo ],[]).
template([eliza, cual, es, la, debilidad, de, los, pokemon, tipo, roca], [los, pokemon, tipo, roca, son, debiles, a, los, ataques, tipo, lucha, planta, tierra, acera, y, agua],[]).
template([eliza, cual, es, la, debilidad, de, los, pokemon, tipo, normal], [los, pokemon, tipo, normal, son, debiles, a, los, ataques, tipo, lucha],[]).
template([eliza, cual, es, la, debilidad, de, los, pokemon, tipo, lucha], [los, pokemon, tipo, lucha, son, debiles, a, los, ataques, tipo, hada, volador, y, psiquico],[]).
template([eliza, cual, es, la, debilidad, de, los, pokemon, tipo, veneno], [los, pokemon, tipo, veneno, son, debiles, a, los, ataques, tipo, tierra, y, psiquico],[]).
template([eliza, cual, es, la, debilidad, de, los, pokemon, tipo, hada], [los, pokemon, tipo, hada, son, debiles, a, los, ataques, tipo, veneno, y, acero],[]).
template([eliza, cual, es, la, debilidad, de, los, pokemon, tipo, bicho], [los, pokemon, tipo, bicho, son, debiles, a, los, ataques, tipo, fuego, volador, y, roca],[]).
template([eliza, cual, es, la, debilidad, de, los, pokemon, tipo, electrico], [los, pokemon, tipo, electrico, son, debiles, a, los, ataques, tipo, tierra],[]).


% fortaleza
template([eliza, contra, que, tipo, de, ataques, son, fuertes, los, pokemon, tipo, planta], [los, pokemon, tipo, planta, son, fuertes, a, los, ataques, tipo, tierra, roca, y, agua],[]).
template([eliza, contra, que, tipo, de, ataques, son, fuertes, los, pokemon, tipo, agua], [los, pokemon, tipo, agua, son, fuertes, a, los, ataques, tipo, fuego, tierra, y, roca],[]).
template([eliza, contra, que, tipo, de, ataques, son, fuertes, los, pokemon, tipo, fuego], [los, pokemon, tipo, fuego, son, fuertes, a, los, ataques, tipo, bicho, planta, acero, y, hielo],[]).
template([eliza, contra, que, tipo, de, ataques, son, fuertes, los, pokemon, tipo, volador], [los, pokemon, tipo, volador, son, fuertes, a, los, ataques, tipo ],[]).
template([eliza, contra, que, tipo, de, ataques, son, fuertes, los, pokemon, tipo, tierra], [los, pokemon, tipo, tierra, son, fuertes, a, los, ataques, tipo, electrico, fuego, veneno, roca, y, acero],[]).
template([eliza, contra, que, tipo, de, ataques, son, fuertes, los, pokemon, tipo, roca], [los, pokemon, tipo, roca, son, fuertes, a, los, ataques, tipo, bicho, fuego, volador, y, hielo],[]).
template([eliza, contra, que, tipo, de, ataques, son, fuertes, los, pokemon, tipo, normal], [los, pokemon, tipo, normal, no, son, fuertes, a, ningun, tipo, de, ataques],[]).
template([eliza, contra, que, tipo, de, ataques, son, fuertes, los, pokemon, tipo, lucha], [los, pokemon, tipo, lucha, son, fuertes, a, los, ataques, tipo, siniestro, hielo, normal, roca, y, acero],[]).
template([eliza, contra, que, tipo, de, ataques, son, fuertes, los, pokemon, tipo, veneno], [los, pokemon, tipo, veneno, son, fuertes, a, los, ataques, tipo, hada, y, planta],[]).
template([eliza, contra, que, tipo, de, ataques, son, fuertes, los, pokemon, tipo, hada], [los, pokemon, tipo, hada, son, fuertes, a, los, ataques, tipo , lucha, siniestro, y, dragon],[]).
template([eliza, contra, que, tipo, de, ataques, son, fuertes, los, pokemon, tipo, bicho], [los, pokemon, tipo, bicho, son, fuertes, a, los, ataques, tipo, planta, siniestro, y, psiquico],[]).
template([eliza, contra, que, tipo, de, ataques, son, fuertes, los, pokemon, tipo, electrico], [los, pokemon, tipo, electrico, son, fuertes, a, los, ataques, tipo, fantasma, y, psiquico],[]).


				  
template(_, ['por favor', explica, un, poco, mas, '.'], []). 
% Lo que le gusta a eliza : flagLike
elizaLikes(X, R):- likes(X), R = ['Si', me, gusta, X].
elizaLikes(X, R):- \+likes(X), R = ['Nope', no, me, gustan, X].
likes(apples).
likes(ponies).
likes(zombies).
likes(manzanas).
likes(computadoras).
like(carros).
like(juegos).
like(helados).
like(carne).
likes(pokemon).



% sintomas de herpes: flagSint
sintomaHerpes(X, R):- sint0(X), R = [ese,'Si', es, un, sintoma, del, herpes].
sintomaHerpes(X, R):- \+sint0(X), R = [ese,'No', es, un, sintoma, del, herpes].
sint0(fiebre).
sint0(dolores_corporales).
sint0(dolor_corporal).
sint0(picazon).
sint0(ampollas).
sint0(dolor_de_cabeza).
sint0(dolores_de_cabeza).
sint0(dolores_de_garganta).
sint0(dolor_de_garganta).
sint0(ulceras).
sint0(miccion).
sint0(miccion_dolorosa).
sint0(secrecion_vaginal).



% sintomas de herpes: flagSint1
sintomaHerpes1(X, Y, R):- sint1(X, Y), R = [con, esos, 2, sintomas, 'Si', es, probable, que, sea, herpes].
sintomaHerpes1(X, Y, R):- \+sint1(X, Y), R = [con, esos, 2, sintomas, 'No', es, problable, que, sea, herpes].
sint1(fiebre, picazon).
sint1(fiebre, ampollas).
sint1(fiebre, ulceras).
sint1(fiebre, dolor_corporal).

sint1(dolor_corporal, fiebre).
sint1(dolor_corporal, ampollas).
sint1(dolor_corporal, ulceras).
sint1(dolor_corporal, dolor_corporal).
sint1(dolor_corporal, miccion).
sint1(dolor_corporal, ampollas).

sint1(picazon, fiebre).
sint1(picazon, ampollas).
sint1(picazon, ulceras).
sint1(picazon, dolor_corporal).
sint1(picazon, miccion).
sint1(picazon, ampollas).

sint1(ampollas, fiebre).
sint1(ampollas, ampollas).
sint1(ampollas, picazon).
sint1(ampollas, ulceras).
sint1(ampollas, dolor_corporal).
sint1(ampollas, miccion).
sint1(ampollas, dolor_de_cabeza).

sint1(dolor_de_cabeza, fiebre).
sint1(dolor_de_cabeza, picazon).
sint1(dolor_de_cabeza, ulceras).
sint1(dolor_de_cabeza, ampollas).
sint1(dolor_de_cabeza, miccion).
sint1(dolor_de_cabeza, dolor_corporal).
sint1(dolor_de_cabeza, dolor_de_garganta).

sint1(dolor_de_garganta, fiebre).
sint1(dolor_de_garganta, ampollas).
sint1(dolor_de_garganta, ulceras).
sint1(dolor_de_garganta, dolor_corporal).
sint1(dolor_de_garganta, miccion).
sint1(dolor_de_garganta, ampollas).
sint1(dolor_de_garganta, dolor_de_cabeza).
sint1(dolor_de_garganta, secrecion_vaginal).

sint1(ulceras, fiebre).
sint1(ulceras, ampollas).
sint1(ulceras, ulceras).
sint1(ulceras, dolor_corporal).
sint1(ulceras, miccion).
sint1(ulceras, dolor_de_cabeza).
sint1(ulceras, secrecion_vaginal).
sint1(ulceras, dolor_de_cabeza).

sint1(miccion, fiebre).
sint1(miccion, ampollas).
sint1(miccion, ulceras).
sint1(miccion, dolor_corporal).
sint1(miccion, miccion).
sint1(miccion, dolor_de_cabeza).
sint1(miccion, secrecion_vaginal).

sint1(secrecion_vaginal, fiebre).
sint1(secrecion_vaginal, miccion).
sint1(secrecion_vaginal, ulceras).
sint1(secrecion_vaginal, dolor_corporal).
sint1(secrecion_vaginal, dolor_de_cabeza).
sint1(secrecion_vaginal, secrecion_vaginal).
sint1(secrecion_vaginal, miccion).





% sintomas de herpes: flagSint2
sintomaHerpes2(X, Y, Z, R):- sint2(X, Y, Z), R = [con, esos, 3, sintomas, 'Si', es, probable, que, sea, herpes].
sintomaHerpes2(X, Y, Z, R):- \+sint2(X, Y, Z), R = [con, esos, 3, sintomas, 'No', es, problable, que, sea, herpes].
sint2(fiebre, picazon, ampollas).
sint2(fiebre, ampollas, picazon).
sint2(fiebre, ulceras, miccion).
sint2(fiebre, dolor_corporal, dolor_de_cabeza).
sint2(fiebre, dolor_de_cabeza, picazon).
sint2(fiebre, miccion, ampollas, picazon).
sint2(fiebre, secrecion_vaginal, ampollas).



sint2(dolor_corporal, fiebre, ampollas).
sint2(dolor_corporal, ampollas, fiebre).
sint2(dolor_corporal, ulceras, miccion).
sint2(dolor_corporal, dolor_corporal, fiebre).
sint2(dolor_corporal, miccion, ampollas).
sint2(dolor_corporal, ampollas, miccion).

sint2(picazon, fiebre, ampollas).
sint2(picazon, ampollas, miccion).
sint2(picazon, ulceras, ampollas).
sint2(picazon, dolor_corporal, fiebre).
sint2(picazon, miccion, ulceras).
sint2(picazon, ampollas, miccion).

sint2(ampollas, fiebre, ulceras).
sint2(ampollas, ampollas, fiebre).
sint2(ampollas, picazon, miccion).
sint2(ampollas, ulceras, picazon).
sint2(ampollas, dolor_corporal, fiebre).
sint2(ampollas, miccion, ulceras).
sint2(ampollas, dolor_de_cabeza, miccion).

sint2(dolor_de_cabeza, fiebre, ampollas).
sint2(dolor_de_cabeza, ampollas, picazon).
sint2(dolor_de_cabeza, ulceras, miccion).
sint2(dolor_de_cabeza, ampollas, fiebre).
sint2(dolor_de_cabeza, miccion, dolor_corporal).
sint2(dolor_de_cabeza, dolor_corporal, miccion).
sint2(dolor_de_cabeza, dolor_de_garganta, fiebre).

sint2(dolor_de_garganta, fiebre).
sint2(dolor_de_garganta, ampollas).
sint2(dolor_de_garganta, ulceras).
sint2(dolor_de_garganta, dolor_corporal).
sint2(dolor_de_garganta, miccion).
sint2(dolor_de_garganta, ampollas).
sint2(dolor_de_garganta, dolor_de_cabeza).
sint2(dolor_de_garganta, secrecion_vaginal).

sint2(ulceras, fiebre, picazon).
sint2(ulceras, ampollas, fiebre).
sint2(ulceras, ulceras, ampollas).
sint2(ulceras, dolor_corporal, dolor_corporal).
sint2(ulceras, miccion, ampollas).
sint2(ulceras, dolor_de_cabeza, miccion).
sint2(ulceras, secrecion_vaginal, ampollas).
sint2(ulceras, dolor_de_cabeza, fiebre).

sint2(miccion, fiebre, ampollas).
sint2(miccion, ampollas, ulceras).
sint2(miccion, ulceras, dolor_corporal).
sint2(miccion, dolor_corporal, fiebre).
sint2(miccion, ulceras, fiebre).
sint2(miccion, dolor_de_cabeza, ulceras).
sint2(miccion, secrecion_vaginal, ampollas).

sint2(secrecion_vaginal, fiebre, miccion).
sint2(secrecion_vaginal, miccion, fiebre).
sint2(secrecion_vaginal, ulceras, miccion).
sint2(secrecion_vaginal, dolor_corporal, ampollas).
sint2(secrecion_vaginal, dolor_de_cabeza, fiebre).
sint2(secrecion_vaginal, secrecion_vaginal, ampollas).
sint2(secrecion_vaginal, miccion, ulceras).




% ampollas: flagGallas
lugarGallas(X, R):- gallasEn(X), R = [las, gallas, en, X, podria, ser, herpes].
lugarGallas(X, R):- \+gallasEn(X), R = [las, gallas, en, X, no, es, herpes].
gallasEn(gluteos).
gallasEn(muslos_internos).
gallasEn(recto).
gallasEn(ano).
gallasEn(boca).
gallasEn(uretra).
gallasEn(vulva).
gallasEn(vagina).
gallasEn(cuello_del_utero).
gallasEn(pene).
gallasEn(escroto).




% lo que hace eliza: flagDo
elizaDoes(X, R):- does(X), R = ['si', yo, hago, X, y, amo, hacerlo].
elizaDoes(X, R):- \+does(X), R = ['No', yo, no, hago, X ,'.', eso, es, demasiado, dificil, para, mi].
does(study).
does(cook).
does(work).

% lo que es eliza: flagIs
elizaIs(X, R):- is0(X), R = ['Si', yo, soy, X].
elizaIs(X, R):- \+is0(X), R = ['No', yo, no, soy, X].
is0(dumb).
is0(weird).
is0(nice).
is0(fine).
is0(feliz).
is0(redundant).
is0(robot).





% evolucion de pokemon evoPok
pokemonUp(X,R) :- evolucion(X,Y), R=["la evolucion de ", X, " es ", Y].
pokemonUp(X,R):- \+evolucion(X,Y), R = ["el pokemon ", X, " no existe"].
evolucion(bulbasaur, ivysaur).
evolucion(ivysaur, venusaur).
evolucion(charmander, charmeleon).
evolucion(charmeleon, charizard).
evolucion(squirtle, wartortle).
evolucion(wartortle, blastoise).
evolucion(caterpie, metapod).
evolucion(metapod, butterfree).
evolucion(weedle, kakuna).
evolucion(kakuna, beedrill).
evolucion(pidgey, pidgeotto).
evolucion(pidgeotto, pidgeot).
evolucion(rattata, raticate).
evolucion(spearow, fearow).
evolucion(ekans, arbok).
evolucion(pichu, pikachu).
evolucion(pikachu, raichu).
evolucion(sandshrew, sandslash).
evolucion(nidorina, nidoking).
evolucion(nidorino, nidoqueen).
evolucion(cleffa, clefairy).
evolucion(clefairy, clefable).
evolucion(vulpix, ninetales).
evolucion(igglybuff, jigglypuff).
evolucion(jigglypuff, wigglytuff).
evolucion(zubat, golbat).
evolucion(golbat, crobat).
evolucion(oddish, gloom).
evolucion(paras, parasect).
evolucion(venonat, venomoth).
evolucion(diglett, dugtrio).
evolucion(meowth, persian).
evolucion(psyduck, golduck).
evolucion(mankey, primeape).
evolucion(growlithe, arcanine).


% involucion de pokemon invoPok
pokemonDown(X,R) :- involucion(X,Y), R=[Y, " evoluciona a ", X].
pokemonDown(X,R) :- \+involucion(X,Y), R=["el pokemon ", X, " no existe"].
involucion(venusaur, ivysaur).
involucion(ivysaur, bulbasaur).
involucion(charizard, charmeleon).
involucion(charmeleon, charmander).
involucion(blastoise, wartortle).
involucion(wartortle, squirtle).
involucion(butterfree, metapod).
involucion(metapod, caterpie).
involucion(beedrill, kakuna).
involucion(kakuna, weedle).
involucion(pidgeot, pidgeotto).
involucion(pidgeotto, pidgey).
involucion(raticate, rattata).
involucion(fearow, spearow).
involucion(arbok, ekans).
involucion(raichu, pikachu).
involucion(pikachu, pichu).
involucion(sandslash, sandshrew).
involucion(nidoqueen, nidorina).
involucion(nidoking, nidorino).
involucion(clefable, clefairy).
involucion(clefairy, cleffa).
involucion(ninetales, vulpix).
involucion(wigglytuff, jigglypuff).
involucion(jigglypuff, igglybuff).
involucion(crobat, golbat).
involucion(golbat, zubat).
involucion(vileplume, gloom).
involucion(bellossom, gloom).
involucion(parasect, paras).
involucion(venomoth, venonat).
involucion(dugtrio, diglett).
involucion(persian, meowth).
involucion(golduck, psyduck).
involucion(primeape, mankey).
involucion(arcanine, growlithe).


% tipo de pokemon tipoPok
pokemonTipo(X,R) :- tipo(X,Y), R=["el pokemon ", X, " es tipo ", Y].
pokemonTipo(X,R) :- \+tipo(X,Y), R=["el pokemon ", X, " no existe"].
tipo(bulbasaur, planta_veneno).
tipo(ivysaur, planta_veneno).
tipo(venusaur, planta_veneno).
tipo(charmander, fuego).
tipo(charmeleon, fuego).
tipo(charizard, fuego_volador).
tipo(squirtle, agua).
tipo(wartortle, agua).
tipo(blastoise, agua).
tipo(caterpie, bicho).
tipo(metapod, bicho).
tipo(butterfree, bicho_volador).
tipo(weedle, bicho_veneno).
tipo(kakuna, bicho_veneno).
tipo(beedrill, bicho_veneno).
tipo(pidgey, normal_volador).
tipo(pidgeotto, normal_volador).
tipo(pidgeot, normal_volador).
tipo(rattata, normal).
tipo(raticate, normal).
tipo(spearow, normal_volador).
tipo(fearow, normal_volador).
tipo(ekans, veneno).
tipo(arbok, veneno).
tipo(pichu, electrico).
tipo(pikachu, electrico).
tipo(raichu, electrico).
tipo(sandshrew, tierra).
tipo(sandslash, tierra).
tipo(nidoran, veneno).
tipo(nidorino, veneno).
tipo(nidorina, veneno).
tipo(nidoking, veneno_tierra).
tipo(nidoqueen, veneno_tierra).
tipo(clefairy, hada).
tipo(clefable, hada).
tipo(zubat, veneno_volador).
tipo(golbat, veneno_volador).
tipo(oddish, planta_veneno).
tipo(gloom, planta_veneno).
tipo(vileplume, planta_veneno).
tipo(paras, bicho_planta).
tipo(parasect, bicho_planta).
tipo(venonat, bicho_veneno).
tipo(venomoth, bicho_veneno).
tipo(diglett, tierra).
tipo(dugtrio, tierra).
tipo(meowth, normal).
tipo(persian, normal).
tipo(psyduck, agua).
tipo(golduck, agua).
tipo(mankey, lucha).
tipo(primeape, lucha).
tipo(growlithe, fuego).
tipo(arcanine, fuego).


% debilidad de cada pokemon debPok
pokemonDebilidad(X,R) :- debil(X,Y), R=["el pokemon ", X, " es debil a los ataques tipo", Y].
pokemonDebilidad(X,R) :- \+debil(X,Y), R=["el pokemon ", X, " no existe"].
debil(bulbasaur, fuego_psiquico_volador_hielo).
debil(ivysaur, fuego_psiquico_volador_hielo).
debil(venusaur, fuego_psiquico_volador_hielo).
debil(charmander, agua_tierra_roca).
debil(charmeleon, agua_tierra_roca).
debil(charizard, agua_electrico_roca).
debil(squirtle, planta_electrico).
debil(wartortle, planta_electrico).
debil(blastoise, planta_electrico).
debil(caterpie, fuego_volador_roca).
debil(metapod, fuego_volador_roca).
debil(butterfree, fuego_volador_electrico_hielo_roca).
debil(weedle, fuego_psiquico_volador_roca).
debil(kakuna, fuego_psiquico_volador_roca).
debil(beedrill, fuego_psiquico_volador_roca).
debil(pidgey, electrico_hielo_roca).
debil(pidgeotto, electrico_hielo_roca).
debil(pidgeot, electrico_hielo_roca).
debil(rattata, lucha).
debil(raticate, lucha).
debil(spearow, electrico_hielo_roca).
debil(fearow, electrico_hielo_roca).
debil(ekans, psiquico_tierra).
debil(arbok, psiquico_tierra).
debil(pichu, tierra).
debil(pikachu, tierra).
debil(raichu, tierra).
debil(sandshrew, agua_planta_hielo).
debil(sandslash, agua_planta_hielo).
debil(nidoran, psiquico_tierra).
debil(nidorino, psiquico_tierra).
debil(nidorina, psiquico_tierra).
debil(nidoking, agua_psiquico_hielo_tierra).
debil(nidoqueen, agua_psiquico_hielo_tierra).
debil(clefairy, acero_veneno).
debil(clefable, acero_veneno).
debil(vulpix, agua_tierra_roca).
debil(ninetales, agua_tierra_roca).
debil(igglybuff, acero_veneno).
debil(jigglypuff, acero_veneno).
debil(wigglytuff, acero_veneno).
debil(zubat, psiquico_electrico_hielo_roca).
debil(golbat, psiquico_electrico_hielo_roca).
debil(oddish, fuego_psiquico_volador_hielo).
debil(gloom, fuego_psiquico_volador_hielo).
debil(vileplume, fuego_psiquico_volador_hielo).
debil(paras, fuego_volador_hielo_veneno_roca_bicho).
debil(parasect, fuego_volador_hielo_veneno_roca_bicho).
debil(venonat, fuego_psiquico_volador_roca).
debil(venomoth, fuego_psiquico_volador_roca).
debil(diglett, agua_planta_hielo).
debil(dugtrio, agua_planta_hielo).
debil(meowth, lucha).
debil(persian, lucha).
debil(psyduck, planta_electrico).
debil(golduck, planta_electrico).
debil(mankey, psiquico_volador_hada).
debil(primeape, psiquico_volador_hada).
debil(growlithe, agua_tierra_roca).
debil(arcanine, agua_tierra_roca).



match([],[]).
match([], _):- true.

match([S|Stim],[I|Input]) :-
	atom(S), % si I es un s(X) devuelve falso
	S == I,
	match(Stim, Input),!.

match([S|Stim],[_|Input]) :-
% I es un s(X), lo ignoro y continúo con el resto de la lista
	\+atom(S),
	match(Stim, Input),!.

replace0([], _, _, Resp, R):- append(Resp, [], R),!.

% Eliza likes:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagLike,
	elizaLikes(Atom, R).

% Eliza does:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagDo,
	elizaDoes(Atom, R).


% sintomaHerpes sint0:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagSint,
	sintomaHerpes(Atom, R).


% sintomaHerpes sint1:
replace0([I,J|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagSint1,
	nth0(J, Input, Atom1),
	nth0(0, Resp, Y),
	Y == flagSint1,
	sintomaHerpes1(Atom, Atom1, R).


% sintomaHerpes sint2:
replace0([I,J,K|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagSint2,
	nth0(J, Input, Atom1),
	nth0(0, Resp, Y),
	Y == flagSint2,
	nth0(K, Input, Atom2),
	nth0(0, Resp, Z),
	Z == flagSint2,
	sintomaHerpes2(Atom, Atom1, Atom2, R).

% lugarGallas gallasEn:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagGallas,
	lugarGallas(Atom, R).

% Eliza is:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagIs,
	elizaIs(Atom, R).

% evoPok:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == evoPok,
	pokemonUp(Atom, R).


% invoPok :
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == invoPok,
	pokemonDown(Atom, R).


% tipoPok :
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == tipoPok,
	pokemonTipo(Atom, R).


% debPok :
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == debPok,
	pokemonDebilidad(Atom, R).





replace0([I|Index], Input, N, Resp, R):-
	length(Index, M), M =:= 0,
	nth0(I, Input, Atom),
	select(N, Resp, Atom, R1), append(R1, [], R),!.

replace0([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	length(Index, M), M > 0,
	select(N, Resp, Atom, R1),
	N1 is N + 1,
	replace0(Index, Input, N1, R1, R),!.

~~~