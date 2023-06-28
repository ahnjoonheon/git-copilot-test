package com.example.logistics.dto;

public class CenterSearchCondition {
    private String centerName;
    private String address;
    private String phoneNumber;

    private CenterSearchCondition() {
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
        private final CenterSearchCondition condition;

        private Builder() {
            condition = new CenterSearchCondition();
        }

        public Builder centerName(String centerName) {
            condition.centerName = centerName;
            return this;
        }

        public Builder address(String address) {
            condition.address = address;
            return this;
        }

        public Builder phoneNumber(String phoneNumber) {
            condition.phoneNumber = phoneNumber;
            return this;
        }

        public CenterSearchCondition build() {
            return condition;
        }
    }
}
