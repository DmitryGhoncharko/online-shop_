package by.epam.onlineShop.service.validator.impl;

import by.epam.onlineShop.service.validator.AbstractValidator;

public class IdValidatorImpl extends AbstractValidator {
    private static final String ID_REGEX = ".*";

    @Override
    protected String getRegex() {
        return ID_REGEX;
    }
}
