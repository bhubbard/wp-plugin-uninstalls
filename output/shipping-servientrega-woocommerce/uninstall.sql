-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_servientrega_shipping_settings', 'servientrega_validation_error', 'wf_dhl_shipping_validation_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shipping_custom_price_product_smp', 'guide_servientrega', '_billing_identificacion', '_shipping_identificacion');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shipping_custom_price_product_smp', 'guide_servientrega', '_billing_identificacion', '_shipping_identificacion');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shipping_custom_price_product_smp', 'guide_servientrega', '_billing_identificacion', '_shipping_identificacion');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shipping_custom_price_product_smp', 'guide_servientrega', '_billing_identificacion', '_shipping_identificacion');

