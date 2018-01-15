PROGRAM jeu_nim_ver1

//BUT: recréer le jeu de nim
//PRINCIPE: le perdant est celui qui retire la dernière allumette. Chaque joueur peut retirer jusqu'à 3 allumettes par tour
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
	clrscr;
	//Initialisation:
	tour := 1
	nb_allu := 21
	retirer := 0

	REPEAT
		IF (tour MOD 2 = 0) THEN
			writeln ('Au tour du joueur 2');
		ELSE
			writeln ('Au tour du joueur 1');

		REPEAT
			BEGIN
			writeln ('Combien d_allumette vous retirez ?');
			readln retirer
			END
		UNTIL (retirer > ALLU_MAX) OU (retirer < ALLU_MIN);

		nb_allu := nb_allu-retirer;
		writeln ('Il reste ", nb_allu, " Allumettes');
		tour := tour+1;
	UNTIL (nb_allu <= 1);

	IF (tour-1 MOD 2=0) THEN
		writeln ('Joueur 1 a Gagner');
	ELSE
		writeln ('Joueur 2 a gagné');
END.