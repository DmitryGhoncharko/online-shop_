package by.epam.onlineShop.service.validator.impl;

import by.epam.onlineShop.service.validator.AbstractValidator;

public class PhoneValidatorImpl extends AbstractValidator {
    private static final String PHONE_REGEX = ".*";

    @Override
    protected String getRegex() {
        return PHONE_REGEX;
    }
}
