-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_version', 'alg_wc_ccf_key');
DELETE FROM wp_options WHERE option_name LIKE '%version';

