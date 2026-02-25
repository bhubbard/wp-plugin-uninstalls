-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ced_etsy_categories_fetched', 'ced_etsy_global_settings', 'ced_etsy_settings_category', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'ced_etsy_shop_name', 'ced_etsy_setup_steps', 'ced_etsy_details', 'ced_etsy_reauthorize_account', 'ced_etsy_auth_info', 'ced-etsy-admin-notice');
DELETE FROM wp_options WHERE option_name LIKE 'ced_etsy_chunk_products_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_etsy_get_offset_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_etsy_sync_existing_by_identifiers_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_woo_etsy_mapped_categories_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_woo_etsy_mapped_categories_name_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_etsy_setup_wiz_req_attrs_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_etsy_total_shop_products_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_etsy_total_e_shop_pros_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_etsy_auto_upload_categories_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_etsy_product_ids_in_profile_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_etsy_inventory_scheduler_job_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_etsy_token_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stock', '_manage_stock', '_stock_status', '_weight', '_length', '_width', '_height', '_sku', '_thumbnail_id', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stock', '_manage_stock', '_stock_status', '_weight', '_length', '_width', '_height', '_sku', '_thumbnail_id', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stock', '_manage_stock', '_stock_status', '_weight', '_length', '_width', '_height', '_sku', '_thumbnail_id', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stock', '_manage_stock', '_stock_status', '_weight', '_length', '_width', '_height', '_sku', '_thumbnail_id', '_price');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ced_etsy_listing_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ced_etsy_listing_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ced_etsy_listing_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ced_etsy_listing_id_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ced_etsy_url_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ced_etsy_url_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ced_etsy_url_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ced_etsy_url_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ced_etsy_product_files_uploaded%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ced_etsy_product_files_uploaded%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ced_etsy_product_files_uploaded%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ced_etsy_product_files_uploaded%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_etsy_previous_thumb_ids%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_etsy_previous_thumb_ids%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_etsy_previous_thumb_ids%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_etsy_previous_thumb_ids%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_etsy_profile_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_etsy_profile_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_etsy_profile_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_etsy_profile_id_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ced_etsy_listing_data_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ced_etsy_listing_data_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ced_etsy_listing_data_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ced_etsy_listing_data_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_etsy_last_updated%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_etsy_last_updated%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_etsy_last_updated%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_etsy_last_updated%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ced_etsy_state_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ced_etsy_state_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ced_etsy_state_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ced_etsy_state_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_etsy_profile_created_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_etsy_profile_created_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_etsy_profile_created_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_etsy_profile_created_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_etsy_mapped_category_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_etsy_mapped_category_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_etsy_mapped_category_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_etsy_mapped_category_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_etsy_profile_assigned%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_etsy_profile_assigned%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_etsy_profile_assigned%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_etsy_profile_assigned%';

