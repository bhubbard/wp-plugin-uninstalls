-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zt_mini_cart_options');
DELETE FROM wp_options WHERE option_name LIKE '%_mini_cart_options';

