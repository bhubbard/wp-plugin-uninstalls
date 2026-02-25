-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_nova_poshta_shipping_settings', 'woocommerce_nova_poshta_shipping_method_settings', 'woocommerce_novaposhta_settings', 'woocommerce_weight_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('area', 'city', 'warehouse', 'shippingType', 'wnps-shipping-cargotype');
DELETE FROM wp_usermeta WHERE meta_key IN ('area', 'city', 'warehouse', 'shippingType', 'wnps-shipping-cargotype');
DELETE FROM wp_termmeta WHERE meta_key IN ('area', 'city', 'warehouse', 'shippingType', 'wnps-shipping-cargotype');
DELETE FROM wp_commentmeta WHERE meta_key IN ('area', 'city', 'warehouse', 'shippingType', 'wnps-shipping-cargotype');

