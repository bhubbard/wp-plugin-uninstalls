-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sveawebpay_deferred_admin_notices', 'woocommerce_default_gateway', 'sveawebpay_plugin_version');

