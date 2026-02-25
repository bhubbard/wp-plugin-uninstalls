-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('digages_aplwoo_data_usage', 'digages_aplwoo_send_data_option', 'digages_aplwoo_plugin_onboarding_redirect', 'woocommerce_digages_aplwoo_local_shipping_settings', 'digages_aplwoo_label', 'woocommerce_default_country');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'billing_phone', 'billing_address_1', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'billing_phone', 'billing_address_1', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'billing_phone', 'billing_address_1', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'billing_phone', 'billing_address_1', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country');

