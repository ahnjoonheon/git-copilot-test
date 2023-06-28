package com.example.logistics.service;

import com.example.logistics.domain.CenterEntity;
import com.example.logistics.domain.QCenterEntity;
import com.example.logistics.dto.CenterResponse;
import com.example.logistics.dto.CenterSearchCondition;
import com.example.logistics.mapper.CenterMapper;
import com.example.logistics.repository.CenterRepository;
import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.Predicate;
import com.querydsl.jpa.impl.JPAQueryFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class CenterService {
    private final CenterRepository centerRepository;
    private final CenterMapper centerMapper;
    private final JPAQueryFactory queryFactory;

    @Autowired
    public CenterService(CenterRepository centerRepository, CenterMapper centerMapper, JPAQueryFactory queryFactory) {
        this.centerRepository = centerRepository;
        this.centerMapper = centerMapper;
        this.queryFactory = queryFactory;
    }

    public List<CenterResponse> searchCenters(CenterSearchCondition searchCondition) {
        BooleanBuilder builder = new BooleanBuilder();
        QCenterEntity qCenterEntity = QCenterEntity.centerEntity;

        if (searchCondition.getCenterName() != null) {
            builder.and(qCenterEntity.centerName.eq(searchCondition.getCenterName()));
        }
        if (searchCondition.getAddress() != null) {
            builder.and(qCenterEntity.address.eq(searchCondition.getAddress()));
        }
        if (searchCondition.getPhoneNumber() != null) {
            builder.and(qCenterEntity.phoneNumber.eq(searchCondition.getPhoneNumber()));
        }

        Predicate predicate = builder.getValue();

        List<CenterEntity> centerEntities = queryFactory.selectFrom(qCenterEntity)
                .where(predicate)
                .fetch();

        return centerEntities.stream()
                .map(centerMapper::toResponse)
                .collect(Collectors.toList());
    }
}
