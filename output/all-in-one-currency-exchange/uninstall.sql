-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%apikey';
DELETE FROM wp_options WHERE option_name LIKE '%wc_currency';
DELETE FROM wp_options WHERE option_name LIKE '%wc_shop';
DELETE FROM wp_options WHERE option_name LIKE '%wc_product';
DELETE FROM wp_options WHERE option_name LIKE '%wc_cart';
DELETE FROM wp_options WHERE option_name LIKE '%wc_checkout';
DELETE FROM wp_options WHERE option_name LIKE '%wc_thank_you';
DELETE FROM wp_options WHERE option_name LIKE '%quota';

