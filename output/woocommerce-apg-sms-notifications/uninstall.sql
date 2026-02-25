-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apg_sms_settings', 'woocommerce_default_country', 'apg_sms_plugin');

