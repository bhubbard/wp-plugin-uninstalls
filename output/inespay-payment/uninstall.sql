-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('inespay_migration_notice', 'inespay_version', 'woocommerce_inespay_settings', 'woocommerce_my_custom_gateway_settings', 'woocommerce_force_ssl_checkout');

