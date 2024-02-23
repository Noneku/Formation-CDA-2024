<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="SI (nbrUser >= 0) ALORS" texte="Exercice 3.1 &#xa;&#xa;Ecrire un algorithme qui demande un nombre à l’utilisateur, et l’informe ensuite si ce nombre est positif ou négatif (on laisse de côté le cas où le nombre vaut zéro)."/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2lignes="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" epaisseurLigne="2" arrondiAuto="vrai" nbDecimales="8" totalAffichages="1000" maxBoucle="500000" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nbrUser" algoitem="nbrUser EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#nbrUser#pasliste" algoitem="LIRE nbrUser"/>
        <item code="6#nbrUser >= 0" algoitem="SI (nbrUser >= 0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Le nombre est positif#0" algoitem="AFFICHER &quot;Le nombre est positif&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#Le nombre est négatif#0" algoitem="AFFICHER &quot;Le nombre est négatif&quot;"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
