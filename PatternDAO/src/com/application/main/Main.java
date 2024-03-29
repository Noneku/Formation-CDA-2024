package com.application.main;

import java.util.List;

import com.application.dao.DAO;
import com.application.dao.DAOFactory;
import com.application.model.Continent;
import com.application.model.Couleur;
import com.application.model.Pays;

public class Main {

	public Main() {
		// TODO Auto-generated constructor stub
	}

	public static void main(String[] args) {
	
	//List<Pays> allPays = DAOFactory.paysDAO().readAll();
	//int id = 0;
	
	//for (Pays continent : allPays) {
		//id++;
		
    //}

	//Continent continent = DAOFactory.continentDAO().read(6L);
	
	//Pays nouveauPays = new Pays(id, "Boulial", continent);
	
	//Pays InfoDuPays = DAOFactory.paysDAO().read(43L);
	
	DAO.createP("joinPaysContinent");
	
	//System.out.println(InfoDuPays.getContinent().getId_continent());
	
	//DAOFactory.continentDAO().update(nouveauPays, "Pliakov", );
	
	//DAOFactory.paysDAO().update(nouveauPays, "Nouveau pays");
	
	}
	
}
