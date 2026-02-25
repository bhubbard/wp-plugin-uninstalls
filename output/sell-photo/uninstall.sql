-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sell_photo_plugin_version', 'sell_photo_paypal_email', 'sell_photo_currency_code', 'sell_photo_price_amount', 'sell_photo_button_anchor', 'sell_photo_return_url', 'sell_photo_enable_testmode');

