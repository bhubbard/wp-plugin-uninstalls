-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('folders_settings_updated', 'customize_folders', 'default_folders', 'folders_settings', 'premio_folder_options', 'hide_folder_recommended_plugin', 'get_folders_page_views', 'folder_redirect_status', 'folder_update_message', 'hide_folder_color_pop_up', 'hide_folders_cta', 'wcp_custom_sort_attachment', 'show_folder_upgrade_popup', 'folders_term_meta_migrated', 'folders_checked_for_thrive_conflict', 'folder_old_plugin_status', 'wcp_folder_version_267', 'folder_intro_box', 'folders_pro_is_in_process', 'folders_settings1', 'folders_show_in_menu', 'premio_hide_child_popup', 'wpmlc_settings', 'is_web_hosted_on_wp', 'is_wp_media_popup_shown', 'folders_role_access_settings', 'folders_notification_settings', 'premio_folders_without_trash', 'folder_undo_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_hide_affiliate_box';
DELETE FROM wp_options WHERE option_name LIKE '%_show_affiliate_box_after';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_review_box';
DELETE FROM wp_options WHERE option_name LIKE '%_show_review_box_after';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_upgrade_box';
DELETE FROM wp_options WHERE option_name LIKE '%_show_upgrade_box_after';
DELETE FROM wp_options WHERE option_name LIKE 'wcp_custom_sort_%';
DELETE FROM wp_options WHERE option_name LIKE 'last_folder_status_for%';
DELETE FROM wp_options WHERE option_name LIKE '%_folder';
DELETE FROM wp_options WHERE option_name LIKE 'wcp_dynamic_width_for_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_admin_lang_last', '_icl_admin_language_last', 'folders_access_role', 'folder_info', 'is_active', 'wcp_custom_order', 'created_by', 'is_locked', 'is_folder_sticky', 'is_highlighted', 'folders_file_replaced', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_admin_lang_last', '_icl_admin_language_last', 'folders_access_role', 'folder_info', 'is_active', 'wcp_custom_order', 'created_by', 'is_locked', 'is_folder_sticky', 'is_highlighted', 'folders_file_replaced', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_admin_lang_last', '_icl_admin_language_last', 'folders_access_role', 'folder_info', 'is_active', 'wcp_custom_order', 'created_by', 'is_locked', 'is_folder_sticky', 'is_highlighted', 'folders_file_replaced', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_admin_lang_last', '_icl_admin_language_last', 'folders_access_role', 'folder_info', 'is_active', 'wcp_custom_order', 'created_by', 'is_locked', 'is_folder_sticky', 'is_highlighted', 'folders_file_replaced', '_wp_attached_file');

