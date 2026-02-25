-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xh_latipay', 'woocommerce_nzbanks_settings', 'woocommerce_payid_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

