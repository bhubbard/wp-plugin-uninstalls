-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_voya_despachos_settings', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_suubi_courier_shipping_label', 'remitente_nombre', 'remitente_rut', 'remitente_telefono', 'remitente_email', 'remitente_region', 'remitente_comuna', 'remitente_direccion', '_suubi_final_package_dimensions', '_voya_shipping_label');
DELETE FROM wp_usermeta WHERE meta_key IN ('_suubi_courier_shipping_label', 'remitente_nombre', 'remitente_rut', 'remitente_telefono', 'remitente_email', 'remitente_region', 'remitente_comuna', 'remitente_direccion', '_suubi_final_package_dimensions', '_voya_shipping_label');
DELETE FROM wp_termmeta WHERE meta_key IN ('_suubi_courier_shipping_label', 'remitente_nombre', 'remitente_rut', 'remitente_telefono', 'remitente_email', 'remitente_region', 'remitente_comuna', 'remitente_direccion', '_suubi_final_package_dimensions', '_voya_shipping_label');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_suubi_courier_shipping_label', 'remitente_nombre', 'remitente_rut', 'remitente_telefono', 'remitente_email', 'remitente_region', 'remitente_comuna', 'remitente_direccion', '_suubi_final_package_dimensions', '_voya_shipping_label');

