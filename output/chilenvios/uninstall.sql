-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('multicourier_shipping_calculator_settings', 'mi_plugin_activado', 'multicourier_district_keys', 'multicourier_shipping_calculator_states');
DELETE FROM wp_options WHERE option_name LIKE 'multicourier_districts_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_estado', '_billing_estado_nombre', '_billing_distrito', '_billing_distrito_nombre');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_estado', '_billing_estado_nombre', '_billing_distrito', '_billing_distrito_nombre');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_estado', '_billing_estado_nombre', '_billing_distrito', '_billing_distrito_nombre');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_estado', '_billing_estado_nombre', '_billing_distrito', '_billing_distrito_nombre');

