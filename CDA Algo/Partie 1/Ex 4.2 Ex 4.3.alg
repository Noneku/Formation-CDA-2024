<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Exercice 4.2&#xa;&#xa;Cet algorithme est destiné à prédire l'avenir, et il doit être infaillible ! Il lira au clavier l’heure et les minutes, et il affichera l’heure qu’il sera une minute plus tard. Par exemple, si l'utilisateur tape 21 puis 32, l'algorithme doit répondre : &quot;Dans une minute, il sera 21 heure(s) 33&quot;. NB : on suppose que l'utilisateur entre une heure valide. Pas besoin donc de la vérifier." courant="sec PREND_LA_VALEUR 0"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2defaut="" F2etat="inactif" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" arrondiAuto="vrai" epaisseurLigne="2" totalAffichages="1000" nbDecimales="8" totalBoucles="5000000" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="Hours EST_DU_TYPE NOMBRE" code="1#NOMBRE#Hours"/>
        <item algoitem="Minute EST_DU_TYPE NOMBRE" code="1#NOMBRE#Minute"/>
        <item algoitem="sec EST_DU_TYPE NOMBRE" code="1#NOMBRE#sec"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE Hours" code="2#Hours#pasliste"/>
        <item algoitem="LIRE Minute" code="2#Minute#pasliste"/>
        <item algoitem="LIRE sec" code="2#sec#pasliste"/>
        <item algoitem="sec PREND_LA_VALEUR sec + 1" code="5#sec#sec + 1#pasliste"/>
        <item algoitem="SI (sec >= 59) ALORS" code="6#sec >= 59">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="Minute PREND_LA_VALEUR Minute + 1" code="5#Minute#Minute + 1#pasliste"/>
            <item algoitem="sec PREND_LA_VALEUR 0" code="5#sec#0#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (Minute > 59) ALORS" code="6#Minute > 59">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="Hours PREND_LA_VALEUR Hours + 1" code="5#Hours#Hours + 1#pasliste"/>
            <item algoitem="Minute PREND_LA_VALEUR 0" code="5#Minute#0#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (Hours > 23) ALORS" code="6#Hours > 23">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="Hours PREND_LA_VALEUR 0" code="5#Hours#0#pasliste"/>
            <item algoitem="Minute PREND_LA_VALEUR 0" code="5#Minute#0#pasliste"/>
            <item algoitem="sec PREND_LA_VALEUR 0" code="5#sec#0#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="AFFICHER &quot;Dans une minute, il sera &quot;" code="4#Dans une minute, il sera #0"/>
        <item algoitem="AFFICHER Hours" code="3#Hours#0#pasliste"/>
        <item algoitem="AFFICHER &quot;heure(s), &quot;" code="4#heure(s), #0"/>
        <item algoitem="AFFICHER Minute" code="3#Minute#0#pasliste"/>
        <item algoitem="AFFICHER &quot;minute(s), &quot;" code="4#minute(s), #0"/>
        <item algoitem="AFFICHER sec" code="3#sec#0#pasliste"/>
        <item algoitem="AFFICHER &quot;seconde(s)&quot;" code="4#seconde(s)#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
