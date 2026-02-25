-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fold82sm_media_organizer_db_version', 'fold82sm_auto_folders_created', 'fold82sm_show_activation_notice', 'fold82sm_show_welcome', 'fold82sm_settings', 'fold82sm_db_updated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('folder_template', 'folder_display_name', 'folder_auto_generated', 'folder_is_special', 'allowed_post_types', 'folder_order', 'folder_created_date', 'folderra_dynamic_rule');
DELETE FROM wp_usermeta WHERE meta_key IN ('folder_template', 'folder_display_name', 'folder_auto_generated', 'folder_is_special', 'allowed_post_types', 'folder_order', 'folder_created_date', 'folderra_dynamic_rule');
DELETE FROM wp_termmeta WHERE meta_key IN ('folder_template', 'folder_display_name', 'folder_auto_generated', 'folder_is_special', 'allowed_post_types', 'folder_order', 'folder_created_date', 'folderra_dynamic_rule');
DELETE FROM wp_commentmeta WHERE meta_key IN ('folder_template', 'folder_display_name', 'folder_auto_generated', 'folder_is_special', 'allowed_post_types', 'folder_order', 'folder_created_date', 'folderra_dynamic_rule');

