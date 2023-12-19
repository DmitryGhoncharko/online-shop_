package by.epam.onlineShop.service.validator.impl;

import by.epam.onlineShop.service.validator.AbstractValidator;

public class YearValidatorImpl extends AbstractValidator {
    private static final String YEAR_REGEX = ".*";

    @Override
    protected String getRegex() {
        return YEAR_REGEX;
    }
}
