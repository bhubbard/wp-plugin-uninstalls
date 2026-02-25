-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_iSell_photo_paypal_email_address', 'wp_iSell_photo_paypal_currency_code', 'wp_iSell_photo_paypal_currency_symbol', 'wp_iSell_photo_paypal_return_url');

