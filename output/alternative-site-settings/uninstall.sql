-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('altss_settings_options', 'altss_settings_cforms_container_id', 'altss_settings_cforms_privacy_policy_page', 'altss_settings_cforms_additional_settings', 'altss_settings_options_custom_recs', 'altss_settings_options_custom_recs_settings', 'altss_settings_options_cookie_banner_settings', 'copyright_info', 'general_phone_number', 'altss_uninstall_data_enable', 'altss_uninstall_data_items', 'cfs_record_removed_id', 'cfs_record_remove_error', 'altss_reviews_session', 'thadm_admrevs_session');
DELETE FROM wp_options WHERE option_name LIKE 'altss_settings_cforms_options_title_%';
DELETE FROM wp_options WHERE option_name LIKE 'altss_settings_cforms_options_titleshow_%';
DELETE FROM wp_options WHERE option_name LIKE 'altss_settings_cforms_options_desc_%';
DELETE FROM wp_options WHERE option_name LIKE 'altss_settings_cforms_options_descshow_%';
DELETE FROM wp_options WHERE option_name LIKE 'altss_settings_cforms_options_fields_%';
DELETE FROM wp_options WHERE option_name LIKE 'altss_settings_cforms_options_reqfields_%';
DELETE FROM wp_options WHERE option_name LIKE 'altss_settings_cforms_options_firstemail_%';
DELETE FROM wp_options WHERE option_name LIKE 'altss_settings_cforms_options_secondemail_%';
DELETE FROM wp_options WHERE option_name LIKE 'altss_settings_cforms_options_submitbtntext_%';
DELETE FROM wp_options WHERE option_name LIKE 'altss_settings_cforms_options_field_%';
DELETE FROM wp_options WHERE option_name LIKE 'altss_settings_options_embedded_text_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nickname', 'first_name', '_seo_meta_title', 'seo_meta_title', '_seo_meta_description', 'seo_meta_description', '_seo_meta_og_image', 'seo_meta_og_image', '_seo_meta__title', '_seo_meta__description', '_seo_meta__og_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('nickname', 'first_name', '_seo_meta_title', 'seo_meta_title', '_seo_meta_description', 'seo_meta_description', '_seo_meta_og_image', 'seo_meta_og_image', '_seo_meta__title', '_seo_meta__description', '_seo_meta__og_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('nickname', 'first_name', '_seo_meta_title', 'seo_meta_title', '_seo_meta_description', 'seo_meta_description', '_seo_meta_og_image', 'seo_meta_og_image', '_seo_meta__title', '_seo_meta__description', '_seo_meta__og_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nickname', 'first_name', '_seo_meta_title', 'seo_meta_title', '_seo_meta_description', 'seo_meta_description', '_seo_meta_og_image', 'seo_meta_og_image', '_seo_meta__title', '_seo_meta__description', '_seo_meta__og_image');

