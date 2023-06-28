package com.example.logistics.repository;

import com.example.logistics.domain.CenterEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CenterRepository extends JpaRepository<CenterEntity, Long> {
}
