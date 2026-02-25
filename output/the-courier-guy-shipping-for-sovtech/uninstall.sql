-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dismissed-tcg_disclaimer', 'active_sitewide_plugins', 'dimative_shipping_instance_form_fields_filters', 'dismissed-csm_disclaimer', 'woocommerce_wcis_settings');
DELETE FROM wp_options WHERE option_name LIKE 'dismissed-%';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%_installed';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_insurance', '_shipping_insurance', 'product_single_parcel', 'insuranceCost', 'swagger_order_id', '_order_shipping_data', 'dawpro_waybill');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_insurance', '_shipping_insurance', 'product_single_parcel', 'insuranceCost', 'swagger_order_id', '_order_shipping_data', 'dawpro_waybill');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_insurance', '_shipping_insurance', 'product_single_parcel', 'insuranceCost', 'swagger_order_id', '_order_shipping_data', 'dawpro_waybill');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_insurance', '_shipping_insurance', 'product_single_parcel', 'insuranceCost', 'swagger_order_id', '_order_shipping_data', 'dawpro_waybill');

