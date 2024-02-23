<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Exercice 4.1 &#xa;&#xa;Formulez un algorithme équivalent à l’algorithme suivant : Si Tutu > Toto + 4 OU Tata = &quot;OK&quot; Alors Tutu ← Tutu + 1 Sinon Tutu ← Tutu – 1 Finsi" courant="Tutu PREND_LA_VALEUR Tutu - 1"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2lignes="" F2etat="inactif" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" epaisseurPoint="2" nbDecimales="8" maxBoucle="500000" totalAffichages="1000" epaisseurLigne="2" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#Tutu" algoitem="Tutu EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Toto" algoitem="Toto EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="6#Tutu > Toto +4 OU Tata = OK" algoitem="SI (Tutu > Toto +4 OU Tata = OK) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#Tutu#Tutu + 1#pasliste" algoitem="Tutu PREND_LA_VALEUR Tutu + 1"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="5#Tutu#Tutu - 1#pasliste" algoitem="Tutu PREND_LA_VALEUR Tutu - 1"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
