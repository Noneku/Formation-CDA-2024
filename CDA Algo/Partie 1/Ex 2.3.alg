<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte=" 2.3 &#xa;&#xa;Ecrire un programme qui lit le prix HT d’un article, le nombre d’articles et le taux de TVA, et qui fournit le prix total TTC correspondant. Faire en sorte que des libellés apparaissent clairement." courant="TTC PREND_LA_VALEUR prixHT*nbrArticles + (prixHT*TVA/100)"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2lignes="" F2defaut="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" arrondiAuto="vrai" totalAffichages="1000" nbDecimales="8" epaisseurLigne="2" totalBoucles="5000000" epaisseurPoint="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#TVA" algoitem="TVA EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#prixHT" algoitem="prixHT EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nbrArticles" algoitem="nbrArticles EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#TTC" algoitem="TTC EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="19#Affectation des valeurs aux variables" algoitem="//Affectation des valeurs aux variables"/>
        <item code="2#TVA#pasliste" algoitem="LIRE TVA"/>
        <item code="2#prixHT#pasliste" algoitem="LIRE prixHT"/>
        <item code="2#nbrArticles#pasliste" algoitem="LIRE nbrArticles"/>
        <item code="19#Affectation de la TVA à l'article" algoitem="//Affectation de la TVA à l'article"/>
        <item code="5#TTC#prixHT*nbrArticles + (prixHT*TVA/100)#pasliste" algoitem="TTC PREND_LA_VALEUR prixHT*nbrArticles + (prixHT*TVA/100)"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
