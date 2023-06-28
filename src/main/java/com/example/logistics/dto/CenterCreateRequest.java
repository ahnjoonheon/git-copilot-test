package com.example.logistics.dto;

public class CenterCreateRequest {
    private String centerName;
    private String address;
    private String phoneNumber;

    private CenterCreateRequest() {
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
        private final CenterCreateRequest request;

        private Builder() {
            request = new CenterCreateRequest();
        }

        public Builder centerName(String centerName) {
            request.centerName = centerName;
            return this;
        }

        public Builder address(String address) {
            request.address = address;
            return this;
        }

        public Builder phoneNumber(String phoneNumber) {
            request.phoneNumber = phoneNumber;
            return this;
        }

        public CenterCreateRequest build() {
            return request;
        }
    }
}
