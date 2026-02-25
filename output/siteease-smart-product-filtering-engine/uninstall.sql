-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_product_cat');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

