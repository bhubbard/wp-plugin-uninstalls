-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ced_google_user_login_data', 'ced_google_user_token_data', 'is_user_created', 'time_during_create_google_token', 'is_user_logged_in', 'ced_google_account_data', 'ced_google_nav_step', 'ced_google_another_account_data', 'ced_google_GMC_account_data', 'ced_google_ads_account_data', 'ced_save_merchant_details', 'ced_save_ads_details', 'ced_configuration_details', 'ced_compaign_details', 'ced_google_connected_gmail', 'ced_google_connected_ads_gmail', 'connected_google_ads_id', 'ced_google_shopping_list_per_page', 'ced_google_shopping_product_id_view', 'ced_google_shopping_profiles', 'ced_google_shopping_auto_product_syncing', 'ced_google_shopping_auto_existing_product_syncing', 'ced_google_shopping_auto_instant_product_syncing', 'ced_google_shopping_product_automate_setting_data', 'ced_google_shopping_chunk_products', 'ced_google_shopping_existing_chunk_products', 'ced_google_shopping_cnvrsn_global_site_tags', 'ced_google_shopping_claim_and_verify_token', 'ced_google_shopping_mapped_categories', 'ced_google_shopping_update_meta_chunk_product', 'CedUmbProfileSelectedMetaKeys', 'google_shopping_mapped_cat', 'ced_google_shopping_configuration_details', 'time_during_create_google_token', 'ced_google_token_fetched');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stock', '_price', '_sku', '_weight');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stock', '_price', '_sku', '_weight');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stock', '_price', '_sku', '_weight');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stock', '_price', '_sku', '_weight');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_product_updated_on_google_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_product_updated_on_google_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_product_updated_on_google_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_product_updated_on_google_%';

