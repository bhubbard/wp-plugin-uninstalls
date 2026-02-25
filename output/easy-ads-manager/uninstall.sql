-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('easy_ads_addotionals', 'main_easy_ads_array', 'main_easy_ads_taxonomy_custom_field', 'main_easy_ads_date_custom_field', 'easy_ads_manager_views_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('easy_ads_addotionals', 'main_easy_ads_array', 'main_easy_ads_taxonomy_custom_field', 'main_easy_ads_date_custom_field', 'easy_ads_manager_views_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('easy_ads_addotionals', 'main_easy_ads_array', 'main_easy_ads_taxonomy_custom_field', 'main_easy_ads_date_custom_field', 'easy_ads_manager_views_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('easy_ads_addotionals', 'main_easy_ads_array', 'main_easy_ads_taxonomy_custom_field', 'main_easy_ads_date_custom_field', 'easy_ads_manager_views_count');

