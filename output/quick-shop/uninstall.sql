-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quickshop_currency', 'quickshop_symbol', 'quickshop_decimal', 'quickshop_thousands', 'quickshop_checkout_page', 'quickshop_display', 'quickshop_total', 'quickshop_logged', 'quickshop_freeshipv', 'quickshop_title', 'quickshop_tc', 'quickshop_payment_return_url', 'quickshop_email_enabled', 'quickshop_paypal_enabled', 'quickshop_paypal_email', 'quickshop_paypal_notify_url', 'quickshop_location', 'quickshop_products', 'quickshop_shipping_start', 'quickshop_shipping');
DELETE FROM wp_options WHERE option_name LIKE 'qs_cart_%';

