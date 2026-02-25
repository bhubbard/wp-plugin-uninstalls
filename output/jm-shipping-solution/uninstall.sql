-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jmss_api_key', 'jmss_plugin_api_key', 'JMSS_plugin_mode', 'woocommerce_weight_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tracking_number', 'freight_price', 'subtotal_ex_tax', 'JMSS_shippment_saved');
DELETE FROM wp_usermeta WHERE meta_key IN ('tracking_number', 'freight_price', 'subtotal_ex_tax', 'JMSS_shippment_saved');
DELETE FROM wp_termmeta WHERE meta_key IN ('tracking_number', 'freight_price', 'subtotal_ex_tax', 'JMSS_shippment_saved');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tracking_number', 'freight_price', 'subtotal_ex_tax', 'JMSS_shippment_saved');

