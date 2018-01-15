PROGRAM jeu_nim_ver2

//BUT: recréer le jeu de nim
//PRINCIPE: le perdant est celui qui retire la dernière allumette. Chaque joueur peut retirer jusqu'à 3 allumettes par tour. Ici comme le joueur joue seul, on génère les allumettes retirer par "l'ordi" avec une fonction randomize
//ENTREES: joueur1, joueur2
//SORTIE: le nombre d'allumettes restant, joueur gagnant

USES crt;

CONST
	ALLU_MAX = 3 // Nombre maxi d'allumettes que l'on peut retirer
	ALLU_MIN = 1 // Nombre minimum d'allumette que l'on puisse retirer
VAR
	nb_allu, tour: INTEGER // 
	retirer : INTEGER // nb_allu -> nombre d'allumettes; tour -> compteur de tour; 
	//retirer -> allumettes retirer
BEGIN
	randomize;
	clrscr;
	//Initialisation:
	tour := 1
	nb_allu := 21
	retirer := 0

	REPEAT
		IF (tour MOD 2 = 0) THEN
		BEGIN
			writeln ('Au tour du joueur 2');
			retirer := random(2)+1
		END
		ELSE
		BEGIN
			writeln ('Au tour du joueur 1');
			REPEAT
				writeln ('Combien d_allumette vous retirez ?');
				readln retirer
			UNTIL (retirer > ALLU_MAX) OU (retirer < ALLU_MIN);
		END
			nb_allu := nb_allu-retirer;
			writeln ('Il reste ", nb_allu, " Allumettes');
			tour := tour+1;
	UNTIL (nb_allu <= 1);

	IF (tour-1 MOD 2=0) THEN
		writeln ('Vous avez gagné');
	ELSE
		writeln ('Vous avez perdu');
END.