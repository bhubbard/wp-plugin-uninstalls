-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_webmoney_last_settings_update_version', 'woocommerce_webmoney_settings');

