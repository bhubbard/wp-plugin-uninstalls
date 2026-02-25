-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_version');
DELETE FROM wp_options WHERE option_name LIKE '%_default_weight';
DELETE FROM wp_options WHERE option_name LIKE '%_default_height';
DELETE FROM wp_options WHERE option_name LIKE '%_default_width';
DELETE FROM wp_options WHERE option_name LIKE '%_default_length';

