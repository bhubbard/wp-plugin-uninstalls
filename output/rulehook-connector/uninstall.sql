-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_rulehook_settings', 'active_sitewide_plugins', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');

