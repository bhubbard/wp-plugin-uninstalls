-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_cod_settings', 'wc-smart-cod-activated', 'wsc-notice-dismissed', 'wc-smart-cod-notifications', 'wc-smart-cod-settings');

