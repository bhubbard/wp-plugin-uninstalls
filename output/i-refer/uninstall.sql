-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('i-refer-api-url', 'i-refer-api-keys', 'admin_phone');
DELETE FROM wp_options WHERE option_name LIKE '%-settings';
DELETE FROM wp_options WHERE option_name LIKE '%_sites';
DELETE FROM wp_options WHERE option_name LIKE '%_promo_hide';

