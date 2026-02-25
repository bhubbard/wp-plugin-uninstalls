-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hss_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_streaming_video_bundle', '_edd_group_id', '_edd_video_id', 'edd_variable_prices', '_variable_pricing', '_edd_hide_purchase_link', '_edd_ppv_id', 'is_streaming_video', 'edd_price', '_price_details', 'hss_errors', '_edd_product_type', '_edd_bundled_products');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_streaming_video_bundle', '_edd_group_id', '_edd_video_id', 'edd_variable_prices', '_variable_pricing', '_edd_hide_purchase_link', '_edd_ppv_id', 'is_streaming_video', 'edd_price', '_price_details', 'hss_errors', '_edd_product_type', '_edd_bundled_products');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_streaming_video_bundle', '_edd_group_id', '_edd_video_id', 'edd_variable_prices', '_variable_pricing', '_edd_hide_purchase_link', '_edd_ppv_id', 'is_streaming_video', 'edd_price', '_price_details', 'hss_errors', '_edd_product_type', '_edd_bundled_products');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_streaming_video_bundle', '_edd_group_id', '_edd_video_id', 'edd_variable_prices', '_variable_pricing', '_edd_hide_purchase_link', '_edd_ppv_id', 'is_streaming_video', 'edd_price', '_price_details', 'hss_errors', '_edd_product_type', '_edd_bundled_products');

