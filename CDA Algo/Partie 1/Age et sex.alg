<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="SI (sex == &quot;H&quot; ET age > 20 OU (sex == &quot;F&quot; ET age >=18 ET age &lt;= 35)) ALORS"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2etat="inactif" F2defaut="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" maxBoucle="500000" epaisseurLigne="2" epaisseurPoint="2" totalBoucles="5000000" arrondiAuto="vrai" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#sex" algoitem="sex EST_DU_TYPE CHAINE"/>
        <item code="1#NOMBRE#age" algoitem="age EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#sex#pasliste" algoitem="LIRE sex"/>
        <item code="2#age#pasliste" algoitem="LIRE age"/>
        <item code="6#sex == &quot;H&quot; ET age > 20 OU (sex == &quot;F&quot; ET age >=18 ET age &lt;= 35)" algoitem="SI (sex == &quot;H&quot; ET age > 20 OU (sex == &quot;F&quot; ET age >=18 ET age &lt;= 35)) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Vous êtes imposable#0" algoitem="AFFICHER &quot;Vous êtes imposable&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#Vous n'êtes pas imposable#0" algoitem="AFFICHER &quot;Vous n'êtes pas imposable&quot;"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
