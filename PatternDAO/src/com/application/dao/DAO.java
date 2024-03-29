package com.application.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.MySQLConnect;

public abstract class DAO <T> {

	public static Connection getConnection() {
		return MySQLConnect.getConnection();
	}
	
	public abstract boolean create(T object);
	public abstract T read(Long id);
	public abstract ArrayList<T> readAll();
	public abstract boolean update(T object, String newValue);
	public abstract boolean delete(T object);
	public static void createP(String nomProcedure) {
		//String sqlString = "INSERT INTO PAYS (ID_PAYS, NOM_PAYS, ID_CONTINENT) values (?, ?, ?)";
		try(PreparedStatement preparedStatement = getConnection().prepareCall("{call " + nomProcedure + "()}");) {
			ResultSet rs;
			rs =  preparedStatement.executeQuery();
			System.out.println("Sa fonctionne");
		while(rs.next()) {
			System.out.println(rs.getString(4));
		}
			
			
			
		} catch (Exception e) {

		}
	}
}
