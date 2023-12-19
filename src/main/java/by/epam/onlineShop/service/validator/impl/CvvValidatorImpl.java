package by.epam.onlineShop.service.validator.impl;

import by.epam.onlineShop.service.validator.AbstractValidator;

public class CvvValidatorImpl extends AbstractValidator {
    private static final String CVV_REGEX = ".*";

    @Override
    protected String getRegex() {
        return CVV_REGEX;
    }
}
