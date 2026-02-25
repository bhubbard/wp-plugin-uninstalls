-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_securepay_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_wc_gw_banklist';

