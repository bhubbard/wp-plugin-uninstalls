-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'cron', 'mowcps_product_deletion_notice');
DELETE FROM wp_options WHERE option_name LIKE '%_filter_api_response_count';
DELETE FROM wp_options WHERE option_name LIKE '%_api_response_count';
DELETE FROM wp_options WHERE option_name LIKE '%_current_api_response_count';
DELETE FROM wp_options WHERE option_name LIKE '%_api_response_count_temp';
DELETE FROM wp_options WHERE option_name LIKE '%_total_batches';
DELETE FROM wp_options WHERE option_name LIKE 'mowcps_sns_reset_batch_%';
DELETE FROM wp_options WHERE option_name LIKE 'mowcps_sns_new_api_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'mowcps_sns_batch_fully_completed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('MOWCPS_connection_name_media', '_source_url', '_product_image_gallery', '_api_source_id', 'woo_variation_gallery_images', '_product_attributes', 'trends_category_id', 'trends_category_number', 'trends_parent_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('MOWCPS_connection_name_media', '_source_url', '_product_image_gallery', '_api_source_id', 'woo_variation_gallery_images', '_product_attributes', 'trends_category_id', 'trends_category_number', 'trends_parent_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('MOWCPS_connection_name_media', '_source_url', '_product_image_gallery', '_api_source_id', 'woo_variation_gallery_images', '_product_attributes', 'trends_category_id', 'trends_category_number', 'trends_parent_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('MOWCPS_connection_name_media', '_source_url', '_product_image_gallery', '_api_source_id', 'woo_variation_gallery_images', '_product_attributes', 'trends_category_id', 'trends_category_number', 'trends_parent_id');

