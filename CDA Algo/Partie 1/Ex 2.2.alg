<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="POUR i ALLANT_DE 1 A puissance" texte="Exercice 2.2 &#xa;&#xa;Ecrire un programme qui demande un nombre à l’utilisateur, puis qui calcule et affiche le carré de ce nombre."/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2para="" F2lignes="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" totalBoucles="5000000" nbDecimales="8" epaisseurLigne="2" arrondiAuto="vrai" totalAffichages="1000" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#numberUser" algoitem="numberUser EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#puissance" algoitem="puissance EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#result" algoitem="result EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#numberUser#pasliste" algoitem="LIRE numberUser"/>
        <item code="2#puissance#pasliste" algoitem="LIRE puissance"/>
        <item code="5#result#1#pasliste" algoitem="result PREND_LA_VALEUR 1"/>
        <item code="12#i#1#puissance" algoitem="POUR i ALLANT_DE 1 A puissance">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#result#result * numberUser#pasliste" algoitem="result PREND_LA_VALEUR result * numberUser"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="3#result#0#pasliste" algoitem="AFFICHER result"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
