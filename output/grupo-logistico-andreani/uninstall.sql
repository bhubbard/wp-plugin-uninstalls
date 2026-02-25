-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_dimension_unit', 'woocommerce_weight_unit', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', 'woocommerce_email_from_address');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_chosen_shipping', 'nro_envio', 'url_etiqueta', '_params_andreani', '_billing_dni', 'sucursal_andreani');
DELETE FROM wp_usermeta WHERE meta_key IN ('_chosen_shipping', 'nro_envio', 'url_etiqueta', '_params_andreani', '_billing_dni', 'sucursal_andreani');
DELETE FROM wp_termmeta WHERE meta_key IN ('_chosen_shipping', 'nro_envio', 'url_etiqueta', '_params_andreani', '_billing_dni', 'sucursal_andreani');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_chosen_shipping', 'nro_envio', 'url_etiqueta', '_params_andreani', '_billing_dni', 'sucursal_andreani');

