package by.epam.onlineShop.service.validator.impl;

import by.epam.onlineShop.service.validator.AbstractValidator;

public class NameValidatorImpl extends AbstractValidator {
    private static final String NAME_REGEX = ".*";

    @Override
    protected String getRegex() {
        return NAME_REGEX;
    }
}
