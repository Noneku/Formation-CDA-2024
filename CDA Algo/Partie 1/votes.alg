<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2defaut="" F2lignes="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" totalBoucles="5000000" maxBoucle="500000" arrondiAuto="vrai" epaisseurLigne="2" nbDecimales="8" totalAffichages="1000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="candidat_1 EST_DU_TYPE NOMBRE" code="1#NOMBRE#candidat_1"/>
        <item algoitem="candidat_2 EST_DU_TYPE NOMBRE" code="1#NOMBRE#candidat_2"/>
        <item algoitem="candidat_3 EST_DU_TYPE NOMBRE" code="1#NOMBRE#candidat_3"/>
        <item algoitem="canididat_4 EST_DU_TYPE NOMBRE" code="1#NOMBRE#canididat_4"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE candidat_1" code="2#candidat_1#pasliste"/>
        <item algoitem="LIRE candidat_2" code="2#candidat_2#pasliste"/>
        <item algoitem="LIRE candidat_3" code="2#candidat_3#pasliste"/>
        <item algoitem="LIRE canididat_4" code="2#canididat_4#pasliste"/>
        <item algoitem="SI (candidat_1 > 50) ALORS" code="6#candidat_1 > 50">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Candidat 1 élu ! 1er tour&quot;" code="4#Candidat 1 élu ! 1er tour#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (candidat_2 OU candidat_3 OU canididat_4 > 12,5) ALORS" code="6#candidat_2 OU candidat_3 OU canididat_4 > 12,5">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="" code=""/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
