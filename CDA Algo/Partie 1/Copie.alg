<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="facture PREND_LA_VALEUR copie * tax" texte="Exercice 4.4 &#xa;&#xa;Un magasin de reprographie facture 0,10 E les dix premières photocopies, 0,09 E les vingt suivantes et 0,08 E au-delà. Ecrivez un algorithme qui demande à l’utilisateur le nombre de photocopies effectuées et qui affiche la facture correspondante."/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2lignes="" F2etat="inactif" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" totalBoucles="5000000" nbDecimales="8" epaisseurPoint="2" totalAffichages="1000" arrondiAuto="vrai" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="tax EST_DU_TYPE NOMBRE" code="1#NOMBRE#tax"/>
        <item algoitem="nbrUser EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbrUser"/>
        <item algoitem="facture EST_DU_TYPE NOMBRE" code="1#NOMBRE#facture"/>
        <item algoitem="copie EST_DU_TYPE NOMBRE" code="1#NOMBRE#copie"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE nbrUser" code="2#nbrUser#pasliste"/>
        <item algoitem="POUR copie ALLANT_DE 1 A nbrUser" code="12#copie#1#nbrUser">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="facture PREND_LA_VALEUR copie * tax" code="5#facture#copie * tax#pasliste"/>
            <item algoitem="SI (copie &lt;= 10) ALORS" code="6#copie &lt;= 10">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="tax PREND_LA_VALEUR 0.10" code="5#tax#0.10#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (copie >= 11 ET copie &lt;= 30) ALORS" code="6#copie >= 11 ET copie &lt;= 30">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="tax PREND_LA_VALEUR facture * 0.09" code="5#tax#facture * 0.09#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (copie > 30) ALORS" code="6#copie > 30">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="tax PREND_LA_VALEUR facture * 0.08" code="5#tax#facture * 0.08#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Facture : &quot;" code="4#Facture : #0"/>
        <item algoitem="AFFICHER facture" code="3#facture#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
