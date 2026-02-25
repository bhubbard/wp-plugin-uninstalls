-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('OrderPro_translations', 'OrderPro_Column', 'OrdersPro_Orders_options', 'ospcode');

