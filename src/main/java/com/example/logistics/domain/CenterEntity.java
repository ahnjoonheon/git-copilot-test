package com.example.logistics.domain;

import jakarta.persistence.*;

@Entity
@Table(name = "Logistics_Center")
public class CenterEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long centerId;

    @Column(name = "center_name", nullable = false)
    private String centerName;

    @Column(name = "address", nullable = false)
    private String address;

    @Column(name = "phone_number", nullable = false)
    private String phoneNumber;

    protected CenterEntity() {
    }

    public Long getCenterId() {
        return centerId;
    }

    public String getCenterName() {
        return centerName;
    }

    public String getAddress() {
        return address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public static Builder builder() {
        return new Builder();
    }

    public static class Builder {
        private final CenterEntity entity;

        private Builder() {
            entity = new CenterEntity();
        }

        public Builder centerId(Long centerId) {
            entity.centerId = centerId;
            return this;
        }

        public Builder centerName(String centerName) {
            entity.centerName = centerName;
            return this;
        }

        public Builder address(String address) {
            entity.address = address;
            return this;
        }

        public Builder phoneNumber(String phoneNumber) {
            entity.phoneNumber = phoneNumber;
            return this;
        }

        public CenterEntity build() {
            return entity;
        }
    }
}
