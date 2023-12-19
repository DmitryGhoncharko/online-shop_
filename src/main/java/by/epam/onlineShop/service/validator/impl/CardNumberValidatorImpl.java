package by.epam.onlineShop.service.validator.impl;

import by.epam.onlineShop.service.validator.AbstractValidator;

public class CardNumberValidatorImpl extends AbstractValidator {
    private static final String CARD_NUMBER_REGEX = ".*";

    @Override
    protected String getRegex() {
        return CARD_NUMBER_REGEX;
    }
}
