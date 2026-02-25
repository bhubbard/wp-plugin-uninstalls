-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tiempoprep', 'hop_access_token', 'hop_token_expiry', 'woocommerce_dimension_unit', 'woocommerce_weight_unit', 'woocommerce_hopenvios_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_custom_hop_text_field', 'hopenvios_settings', 'settings_etiquetas', '_hopenvios_transaccionid', '_hopenvios_codigotransaccion', '_tracking_number', '_custom_tracking_link', '_hopenvios_etiqueta_url', '_hopenvios_manual', 'hop_envios', 'hop_estandar', 'chosen_shipping', '_billing_company', 'DNI', '_tracking_provider', '_custom_tracking_provider', '_date_shipped', '_shipping_postcode', '_billing_postcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_custom_hop_text_field', 'hopenvios_settings', 'settings_etiquetas', '_hopenvios_transaccionid', '_hopenvios_codigotransaccion', '_tracking_number', '_custom_tracking_link', '_hopenvios_etiqueta_url', '_hopenvios_manual', 'hop_envios', 'hop_estandar', 'chosen_shipping', '_billing_company', 'DNI', '_tracking_provider', '_custom_tracking_provider', '_date_shipped', '_shipping_postcode', '_billing_postcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_custom_hop_text_field', 'hopenvios_settings', 'settings_etiquetas', '_hopenvios_transaccionid', '_hopenvios_codigotransaccion', '_tracking_number', '_custom_tracking_link', '_hopenvios_etiqueta_url', '_hopenvios_manual', 'hop_envios', 'hop_estandar', 'chosen_shipping', '_billing_company', 'DNI', '_tracking_provider', '_custom_tracking_provider', '_date_shipped', '_shipping_postcode', '_billing_postcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_custom_hop_text_field', 'hopenvios_settings', 'settings_etiquetas', '_hopenvios_transaccionid', '_hopenvios_codigotransaccion', '_tracking_number', '_custom_tracking_link', '_hopenvios_etiqueta_url', '_hopenvios_manual', 'hop_envios', 'hop_estandar', 'chosen_shipping', '_billing_company', 'DNI', '_tracking_provider', '_custom_tracking_provider', '_date_shipped', '_shipping_postcode', '_billing_postcode');

