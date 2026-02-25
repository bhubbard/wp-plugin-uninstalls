-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('close_shop_settings_input', 'close_shop_settings_displayToggleCB', 'close_shop_settings_addToCartDisplayToggle', 'close_shop_settings_proceedToCheckoutDisplayToggle', 'close_shop_settings_displayInputText', 'close_shop_settings_displayInputTextProductPage', 'close_shop_settings_displayInputTextCartPage', 'close_shop_settings_displayInputTextCheckoutPage');

