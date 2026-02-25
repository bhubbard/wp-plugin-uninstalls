-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jubelio_shipment_token', 'woocommerce_jubelioshipment_settings', 'jubelio_auth', 'jubelio_shipment_domain', 'woocommerce_shipping_debug_mode', 'woocommerce_jubelioshipment_13_settings', 'jubelio_shipment_token', '_jubelio_shipment_invalid_promotions', 'jubelio_shipment_promotion_usage', 'jubelio_shipment_multi_origin');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_latitude_user', '_longitude_user', '_jubelioshipment_awb_data', '_jubelioshipment_label_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_latitude_user', '_longitude_user', '_jubelioshipment_awb_data', '_jubelioshipment_label_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_latitude_user', '_longitude_user', '_jubelioshipment_awb_data', '_jubelioshipment_label_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_latitude_user', '_longitude_user', '_jubelioshipment_awb_data', '_jubelioshipment_label_data');

