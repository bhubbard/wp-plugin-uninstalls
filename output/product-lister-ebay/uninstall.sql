-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ced_ebay_user_access_token', 'ced_ebay_mode_of_operation', 'ced_ebay_oauth_error_description', 'ced_ebay_access_token_response', 'ced_ebay_saved_category', 'ced_woo_ebay_mapped_categories', 'ced_woo_ebay_mapped_secondary_categories', 'ced_woo_ebay_mapped_categories_name', 'ced_woo_ebay_mapped_secondary_categories_name', 'ced_umb_ebay_ebay_details', 'ced_umb_ebay_ebay_merchant_application_keys', 'ced_ebay_global_settings', 'woocommerce_weight_unit', 'ced_umb_ebay_cronRelatedData', 'ced_umb_ebay_ebay_merchant_details', 'CedUmbProfileSelectedMetaKeys', 'ced-ebay-admin-notice');
DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_listing_url_tld_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_product_ids_in_profile_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_category_attr_val_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_seller_preferences_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_out_of_stock_preference_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_inventory_report_location_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_store_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_umb_ebay_site_selected_return_methods_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_umb_ebay_site_selected_payment_methods_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_site_email_address_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_store_category_mapping_html_markup_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_umb_ebay_site_payment_methods_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_umb_ebay_site_return_methods_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_product_section_per_page_%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_categories%';
DELETE FROM wp_options WHERE option_name LIKE 'ced_ebay_user_access_token_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stock_status', '_manage_stock', '_stock', '_sku', '_length', '_width', '_height', '_thumbnail_id', '_weight', 'ced_umb_ebay_product_template', '_umb_ebay_private_listing', 'ebay_listing_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stock_status', '_manage_stock', '_stock', '_sku', '_length', '_width', '_height', '_thumbnail_id', '_weight', 'ced_umb_ebay_product_template', '_umb_ebay_private_listing', 'ebay_listing_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stock_status', '_manage_stock', '_stock', '_sku', '_length', '_width', '_height', '_thumbnail_id', '_weight', 'ced_umb_ebay_product_template', '_umb_ebay_private_listing', 'ebay_listing_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stock_status', '_manage_stock', '_stock', '_sku', '_length', '_width', '_height', '_thumbnail_id', '_weight', 'ced_umb_ebay_product_template', '_umb_ebay_private_listing', 'ebay_listing_type');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_ebay_profile_assigned%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_ebay_profile_assigned%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_ebay_profile_assigned%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_ebay_profile_assigned%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_ebay_mapped_to_store_category_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_ebay_mapped_to_store_category_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_ebay_mapped_to_store_category_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_ebay_mapped_to_store_category_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_ebay_profile_created_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_ebay_profile_created_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_ebay_profile_created_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_ebay_profile_created_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_ebay_profile_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_ebay_profile_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_ebay_profile_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_ebay_profile_id_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_ebay_mapped_category_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_ebay_mapped_category_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_ebay_mapped_category_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_ebay_mapped_category_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_ebay_mapped_to_store_secondary_category_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_ebay_mapped_to_store_secondary_category_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_ebay_mapped_to_store_secondary_category_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_ebay_mapped_to_store_secondary_category_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_ebay_mapped_secondary_category_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_ebay_mapped_secondary_category_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_ebay_mapped_secondary_category_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_ebay_mapped_secondary_category_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ced_ebay_listing_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ced_ebay_listing_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ced_ebay_listing_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ced_ebay_listing_id_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ced_ebay_relist_item_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ced_ebay_relist_item_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ced_ebay_relist_item_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ced_ebay_relist_item_id_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ced_ebay_promoted_listings_ad_data_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ced_ebay_promoted_listings_ad_data_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ced_ebay_promoted_listings_ad_data_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ced_ebay_promoted_listings_ad_data_%';

