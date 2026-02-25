-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_dimension_unit', 'woocommerce_weight_unit', 'woocommerce_qubik_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_dni', '_chosen_shipping', 'qubik_settings', '_qubik_transaccionid', '_qubik_codigotransaccion', 'puntoentrega', 'sucursal', '_tracking_number', '_custom_tracking_link', '_etiqueta_qubik', '_origen_datos', 'paquetes', 'qubik_results', '_custom_tracking_provider', '_date_shipped', 'estado', 'estado_full');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_dni', '_chosen_shipping', 'qubik_settings', '_qubik_transaccionid', '_qubik_codigotransaccion', 'puntoentrega', 'sucursal', '_tracking_number', '_custom_tracking_link', '_etiqueta_qubik', '_origen_datos', 'paquetes', 'qubik_results', '_custom_tracking_provider', '_date_shipped', 'estado', 'estado_full');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_dni', '_chosen_shipping', 'qubik_settings', '_qubik_transaccionid', '_qubik_codigotransaccion', 'puntoentrega', 'sucursal', '_tracking_number', '_custom_tracking_link', '_etiqueta_qubik', '_origen_datos', 'paquetes', 'qubik_results', '_custom_tracking_provider', '_date_shipped', 'estado', 'estado_full');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_dni', '_chosen_shipping', 'qubik_settings', '_qubik_transaccionid', '_qubik_codigotransaccion', 'puntoentrega', 'sucursal', '_tracking_number', '_custom_tracking_link', '_etiqueta_qubik', '_origen_datos', 'paquetes', 'qubik_results', '_custom_tracking_provider', '_date_shipped', 'estado', 'estado_full');

