-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('syncio_access_token', 'syncio_installer_data', 'syncio_plugin_just_activated', 'woocommerce_currency', 'woocommerce_weight_unit');

