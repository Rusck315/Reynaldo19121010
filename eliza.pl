
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
template([tengo, s(_)], [flagSint], [1]).
template([s(_), es, un, sintoma, '?'], [flagSint], [0]).
template([el, s(_), es, un, sintoma, '?'], [flagSint], [1]).
template([la, s(_), es, un, sintoma, '?'], [flagSint], [1]).
template([las, s(_), es, un, sintoma, '?'], [flagSint], [1]).
template([los, s(_), es, un, sintoma, '?'], [flagSint], [1]).
template([tengo, s(_), es, malo], [flagSint], [1]).
template([tengo, s(_), es, un, sintoma, '?'], [flagSint], [1]).

template([como, se, si, tengo, herpes, '?'], [la, mejor, forma, de, saber, es, llendo, al, medico, a, hacerte, estudios, pero, existen, sintomas], []).
template([cuales, son, los, sintomas, del, herpes, '?'], [los, principales, sintomas, del, herpes, son, :, fiebre, ampollas, ulceras, picazon, y, dolor_corporal], []).
template([cuales, son, los, sintomas, del, herpes], [los, principales, sintomas, del, herpes, son, :, fiebre, ampollas, ulceras, picazon, y, dolor_corporal], []).
template([que, sintomas, tiene, el, herpes, '?'], [los, principales, sintomas, del, herpes, son, :, fiebre, ampollas, ulceras, picazon, y, dolor_corporal, entre, otros], []).

% lugares donde salen gallas
template([las, gallas, en, el, s(_), es, un, sintoma, '?'], [flagGallas], [4]).
template([las, gallas, en, la, s(_), es, un, sintoma, '?'], [flagGallas], [4]).
template([las, gallas, en, los, s(_), es, un, sintoma, '?'], [flagGallas], [4]).
template([tener, gallas, en, el, s(_), es, un, sintoma, '?'], [flagGallas], [4]).
template([tener, gallas, en, la, s(_), es, un, sintoma, '?'], [flagGallas], [4]).
template([tener, gallas, en, los, s(_), es, un, sintoma, '?'], [flagGallas], [4]).
template([gallas, en, el, s(_), es, un, sintoma, '?'], [flagGallas], [3]).
template([gallas, en, la, s(_), es, un, sintoma, '?'], [flagGallas], [3]).
template([gallas, en, los, s(_), es, un, sintoma, '?'], [flagGallas], [3]).

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
sintomaHerpes(X, R):- sint0(X), R = [eso,'Si', es, sintoma, del, herpes].
sintomaHerpes(X, R):- \+sint0(X), R = [eso,'No', es, sintoma, del, herpes].
sint0(fiebre).
sint0(dolores_corporales).
sint0(dolor_corporal).
sint0(picazon).
sint0(ampollas).
sint0(dolor_de_cabeza).
sint0(dolor_de_garganta).
sint0(ulceras).
sint0(miccion).
sint0(miccion_dolorosa).
sint0(secrecion_vaginal).




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
