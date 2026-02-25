-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('payu_settings_option_name', '_payu_plugin_version', 'woocommerce_payulistbanks_settings', 'woocommerce_payucreditcard_settings', 'woocommerce_payuinstallments_settings');

