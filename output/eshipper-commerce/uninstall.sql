-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eshipper_require_postal', 'woocommerce_shipping_method_format', 'eshipper_version', 'woocommerce_eshipper', 'woocommerce_dimension_unit', 'woocommerce_weight_unit', 'woocommerce_currency', 'eshipper_plugin_activation', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_email_from_name', 'woocommerce_email_from_address', 'woocommerce_default_country', 'eshipper_shipping_margin_percentage', 'eshipper_shipping_margin_fixed', 'eshipper_transit_time_display', 'active_sitewide_plugins', 'wp_eshipper_updated', 'wp_eshipper_activated');

