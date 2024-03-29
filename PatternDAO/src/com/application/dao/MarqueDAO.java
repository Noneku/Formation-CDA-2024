package com.application.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.application.model.Continent;
import com.application.model.Marque;
import com.application.model.Pays;

public class MarqueDAO extends DAO<Marque> {

	public MarqueDAO() {}

	@Override
	public boolean create(Marque marque) {

		
		String sqlString = "INSERT INTO MARQUE (ID_MARQUE, NOM_MARQUE, ID_PAYS, ID_FABRICANT) values (?, ?, ?, ?)";
		try(PreparedStatement preparedStatement = getConnection().prepareStatement(sqlString);) {
			preparedStatement.setInt(1, marque.getId_marque() + 1);
			preparedStatement.setString(2, marque.getNom_marque());
			preparedStatement.setInt(3, marque.getPays().getId_pays());
			preparedStatement.setInt(3, marque.getFabricant().getId_fabricant());
			preparedStatement.executeUpdate();
			System.out.println("Création pays : OK");
			
			System.out.println("Votre marque est associé au pays : " + marque.getPays().getNom_pays());
			return true;
		} catch (Exception e) {
			System.out.println("Création pays : KO");
			return false;
		}

	
	}

	@Override
	public Marque read(Long id) {


		Marque marque = null;
		Pays pays = DAOFactory.paysDAO().read(id);
		Fabricant fabricant = DAOFactory.fabricantDAO().read(id);
		
		String sqlString = "SELECT ID_pays, NOM_pays FROM pays WHERE ID_pays = ?";
		
		try(PreparedStatement preparedStatement = getConnection().prepareStatement(sqlString);) {
			preparedStatement.setLong(1, id);
			
			ResultSet resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				marque = new Pays(resultSet.getInt(1), resultSet.getString(2), pays, fabricant);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return pays;
	
	}

	@Override
	public ArrayList<Marque> readAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(Marque object) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Marque object, String colonne) {
		// TODO Auto-generated method stub
		return false;
	}

}
