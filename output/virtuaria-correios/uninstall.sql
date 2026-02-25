-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('virtuaria_correios_installed', 'virtuaria_correios_error_token', 'virtuaria_correios_contract', 'virtuaria_correios_nsu', 'woocommerce_store_postcode', 'virtuaria_correios_settings', 'virtuaria_correios_extra_fields_settings', 'virtuaria_correios_display_install', 'woocommerce_correios-integration_settings', 'woocommerce_custom_orders_table_enabled', 'woocommerce_specific_allowed_countries', 'woocommerce_ship_to_countries', 'virtuaria_contract_info_fixed', 'virtuaria_correios_authenticated', 'virtuaria_correios_token', 'virtuaria_correios_prepost_error', 'virtuaria_correios_contract', 'virtuaria_correios_declaration_error', 'virtuaria_correios_checkout_authenticated');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_number';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_neighborhood';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_neighborhood';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_neighborhood';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_neighborhood';

