-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_spotlight_setting', 'woocommerce_currency', 'wp_spotlight_admin_notice', 'wp_spotlight_update_notice', '_wp_spotlight_setting_redirect_on_activation');

