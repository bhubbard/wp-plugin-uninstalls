-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Profile_CCT_settings', 'Profile_CCT_taxonomy', 'Profile_CCT_form_fields', 'Profile_CCT_page_fields', 'Profile_CCT_list_page', 'Profile_CCT_form_fields_bench', 'Profile_CCT_form_fields_side', 'profile_cct_name_list', 'Profile_CCT_needs_refresh');
DELETE FROM wp_options WHERE option_name LIKE 'Profile_CCT_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('profile_cct', 'profile_cct_last_name', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('profile_cct', 'profile_cct_last_name', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('profile_cct', 'profile_cct_last_name', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('profile_cct', 'profile_cct_last_name', '_thumbnail_id');

