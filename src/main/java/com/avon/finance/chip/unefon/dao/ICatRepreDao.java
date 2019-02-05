package com.avon.finance.chip.unefon.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.avon.finance.chip.unefon.model.CatRepre;

@Repository
public interface ICatRepreDao extends JpaRepository<CatRepre, String>{

	@Override
	CatRepre findOne(String id);
	
	@SuppressWarnings("unchecked")
	@Override
	CatRepre save(CatRepre entity);
	
	
}
