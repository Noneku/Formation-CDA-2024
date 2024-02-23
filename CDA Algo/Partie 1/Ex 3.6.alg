<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Exercice 3.6 &#xa;&#xa;Ecrire un algorithme qui demande l’âge d’un enfant à l’utilisateur. Ensuite, il l’informe de sa catégorie :  &quot;Poussin&quot; de 6 à 7 ans  &quot;Pupille&quot; de 8 à 9 ans  &quot;Minime&quot; de 10 à 11 ans  &quot;Cadet&quot; après 12 ans Peut-on concevoir plusieurs algorithmes équivalents menant à ce résultat ?" courant="SI (nbrUser >= 12) ALORS"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2etat="inactif" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" nbDecimales="8" totalBoucles="5000000" epaisseurPoint="2" arrondiAuto="vrai" epaisseurLigne="2" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nbrUser" algoitem="nbrUser EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#nbrUser#pasliste" algoitem="LIRE nbrUser"/>
        <item code="6#nbrUser >= 12" algoitem="SI (nbrUser >= 12) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Cadet#0" algoitem="AFFICHER &quot;Cadet&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#nbrUser >= 10 ET nbrUser &lt;= 11" algoitem="SI (nbrUser >= 10 ET nbrUser &lt;= 11) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#Minime#0" algoitem="AFFICHER &quot;Minime&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="6#nbrUser >= 8 ET nbrUser &lt;= 9" algoitem="SI (nbrUser >= 8 ET nbrUser &lt;= 9) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#Pupille#0" algoitem="AFFICHER &quot;Pupille&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="6#nbrUser >=6 ET nbrUser &lt;= 7" algoitem="SI (nbrUser >=6 ET nbrUser &lt;= 7) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#Poussin#0" algoitem="AFFICHER &quot;Poussin&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
