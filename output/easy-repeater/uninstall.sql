-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_post_meta_title', 'repeat_meta_post_type', 'repeat_main_number', 'repeat_meta_number', 'repeat_main_array_save', 'repeat_menu_name', 'repeat_main_name', 'repeat_menu_des');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('reapeter_meta_key', 'reapeter_meta_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('reapeter_meta_key', 'reapeter_meta_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('reapeter_meta_key', 'reapeter_meta_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('reapeter_meta_key', 'reapeter_meta_id');

