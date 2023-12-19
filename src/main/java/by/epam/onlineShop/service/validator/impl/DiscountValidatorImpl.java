package by.epam.onlineShop.service.validator.impl;

import by.epam.onlineShop.service.validator.AbstractValidator;

public class DiscountValidatorImpl extends AbstractValidator {
    private static final String DISCOUNT_REGEX = ".*";

    @Override
    protected String getRegex() {
        return DISCOUNT_REGEX;
    }
}
