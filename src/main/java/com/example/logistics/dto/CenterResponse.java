package com.example.logistics.dto;

public class CenterResponse {
    private Long centerId;
    private String centerName;
    private String address;
    private String phoneNumber;

    private CenterResponse() {
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
        private final CenterResponse response;

        private Builder() {
            response = new CenterResponse();
        }

        public Builder centerId(Long centerId) {
            response.centerId = centerId;
            return this;
        }

        public Builder centerName(String centerName) {
            response.centerName = centerName;
            return this;
        }

        public Builder address(String address) {
            response.address = address;
            return this;
        }

        public Builder phoneNumber(String phoneNumber) {
            response.phoneNumber = phoneNumber;
            return this;
        }

        public CenterResponse build() {
            return response;
        }
    }
}