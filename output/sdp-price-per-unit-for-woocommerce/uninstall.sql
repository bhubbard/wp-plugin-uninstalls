-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sppu_price_per_unit', 'woocommerce_tax_display_shop', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'sppu-activado');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sppu_precio_unidad_mostrar', '_sppu_precio_unidad_precio_por', '_sppu_precio_unidad_separador');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sppu_precio_unidad_mostrar', '_sppu_precio_unidad_precio_por', '_sppu_precio_unidad_separador');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sppu_precio_unidad_mostrar', '_sppu_precio_unidad_precio_por', '_sppu_precio_unidad_separador');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sppu_precio_unidad_mostrar', '_sppu_precio_unidad_precio_por', '_sppu_precio_unidad_separador');

