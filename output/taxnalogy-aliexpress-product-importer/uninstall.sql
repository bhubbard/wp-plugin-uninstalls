-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('takaliepi_settings', 'takaliepi_settings_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tak_review_url', '_tak_review_sup', '_tak_review_active', '_tak_json_data', '_tak_variation_list', '_product_attributes', '_tak_var_data', '_tak_aliexpress_id', '_tak_review_widget', '_tak_last_update_timestamp');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tak_review_url', '_tak_review_sup', '_tak_review_active', '_tak_json_data', '_tak_variation_list', '_product_attributes', '_tak_var_data', '_tak_aliexpress_id', '_tak_review_widget', '_tak_last_update_timestamp');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tak_review_url', '_tak_review_sup', '_tak_review_active', '_tak_json_data', '_tak_variation_list', '_product_attributes', '_tak_var_data', '_tak_aliexpress_id', '_tak_review_widget', '_tak_last_update_timestamp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tak_review_url', '_tak_review_sup', '_tak_review_active', '_tak_json_data', '_tak_variation_list', '_product_attributes', '_tak_var_data', '_tak_aliexpress_id', '_tak_review_widget', '_tak_last_update_timestamp');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%';

