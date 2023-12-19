package by.epam.onlineShop.service.validator.impl;

import by.epam.onlineShop.service.validator.AbstractValidator;

public class EmailValidatorImpl extends AbstractValidator {
    private static final String EMAIL_REGEX = ".*";

    @Override
    protected String getRegex() {
        return EMAIL_REGEX;
    }
}
