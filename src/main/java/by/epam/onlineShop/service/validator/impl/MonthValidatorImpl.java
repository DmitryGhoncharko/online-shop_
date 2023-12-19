package by.epam.onlineShop.service.validator.impl;

import by.epam.onlineShop.service.validator.AbstractValidator;

public class MonthValidatorImpl extends AbstractValidator {
    private static final String MONTH_REGEX = ".*";

    @Override
    protected String getRegex() {
        return MONTH_REGEX;
    }
}
