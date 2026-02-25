-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kintone_to_wp_kintone_url', 'kintone_to_wp_kintone_api_token', 'kintone_to_wp_target_appid', 'kintone_to_wp_reflect_post_type', 'kintone_to_wp_kintone_app_form_data', 'kintone_to_wp_kintone_field_code_for_post_title', 'kintone_to_wp_kintone_field_code_for_post_contents', 'kintone_to_wp_kintone_field_code_for_terms', 'kintone_to_wp_setting_custom_fields', 'kintone_to_wp_kintone_field_code_for_featured_image');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('kintone_record_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('kintone_record_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('kintone_record_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('kintone_record_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_code';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_code';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_code';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_code';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_name';

