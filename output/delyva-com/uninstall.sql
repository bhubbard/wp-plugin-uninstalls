-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('delyva_user_id', 'delyva_api_key', 'delyva_integration_id', 'woocommerce_delyva_settings', 'woocs_welcome_currency', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');

