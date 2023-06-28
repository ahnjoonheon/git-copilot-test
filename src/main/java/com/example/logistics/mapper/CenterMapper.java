package com.example.logistics.mapper;

import com.example.logistics.domain.CenterEntity;
import com.example.logistics.dto.CenterResponse;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;

@Mapper(componentModel = "spring")
public interface CenterMapper {
    CenterMapper INSTANCE = Mappers.getMapper(CenterMapper.class);

    @Mapping(source = "centerId", target = "centerId")
    @Mapping(source = "centerName", target = "centerName")
    @Mapping(source = "address", target = "address")
    @Mapping(source = "phoneNumber", target = "phoneNumber")
    CenterResponse toResponse(CenterEntity entity);
}
