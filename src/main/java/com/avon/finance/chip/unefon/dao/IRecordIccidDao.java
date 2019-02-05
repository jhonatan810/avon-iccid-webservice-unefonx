package com.avon.finance.chip.unefon.dao;

import java.util.List;

import org.springframework.data.domain.Example;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.avon.finance.chip.unefon.model.RecordIccid;

@Repository
public interface IRecordIccidDao extends JpaRepository<RecordIccid, Integer> {

	@Override
	<S extends RecordIccid> List<S> findAll(Example<S> example);
}
