-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_shipping_envia_colvanes_ec_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shipping_custom_price_product_smp', 'guide_envia_colvanes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shipping_custom_price_product_smp', 'guide_envia_colvanes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shipping_custom_price_product_smp', 'guide_envia_colvanes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shipping_custom_price_product_smp', 'guide_envia_colvanes');

