package com.avon.finance.chip.unefon.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.avon.finance.chip.unefon.model.Report;

@Repository
public interface IReportDao extends JpaRepository<Report, Integer> {

	@Query("SELECT b FROM Report b " +
	        " WHERE  (EXTRACT (month FROM b.fechaRecarga) = :month AND EXTRACT (year FROM b.fechaRecarga) = :year) AND b.idRegistro.repre.repre = :noRepre ")
	public List<Report> findAllMonthYear(@Param("month") Integer month, @Param("year") Integer year, @Param("noRepre") String noRepre);
}
