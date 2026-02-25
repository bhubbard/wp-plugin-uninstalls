#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'folders_settings_updated'
wp option delete 'customize_folders'
wp option delete 'default_folders'
wp option delete 'folders_settings'
wp option delete 'premio_folder_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_affiliate_box'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_affiliate_box_after'"
wp option delete 'hide_folder_recommended_plugin'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_review_box'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_review_box_after'"
wp option delete 'get_folders_page_views'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_upgrade_box'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_upgrade_box_after'"
wp option delete 'folder_redirect_status'
wp option delete 'folder_update_message'
wp option delete 'hide_folder_color_pop_up'
wp option delete 'hide_folders_cta'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcp_custom_sort_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'last_folder_status_for%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_folder'"
wp option delete 'wcp_custom_sort_attachment'
wp option delete 'show_folder_upgrade_popup'
wp option delete 'folders_term_meta_migrated'
wp option delete 'folders_checked_for_thrive_conflict'
wp option delete 'folder_old_plugin_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcp_dynamic_width_for_%'"
wp option delete 'wcp_folder_version_267'
wp option delete 'folder_intro_box'
wp option delete 'folders_pro_is_in_process'
wp option delete 'folders_settings1'
wp option delete 'folders_show_in_menu'
wp option delete 'premio_hide_child_popup'
wp option delete 'wpmlc_settings'
wp option delete 'is_web_hosted_on_wp'
wp option delete 'is_wp_media_popup_shown'
wp option delete 'folders_role_access_settings'
wp option delete 'folders_notification_settings'

# Delete Transients
wp transient delete 'premio_folders_without_trash'
wp transient delete 'folder_undo_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_admin_lang_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_admin_lang_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_admin_lang_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_admin_lang_last'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_icl_admin_language_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_icl_admin_language_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_icl_admin_language_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_icl_admin_language_last'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'folders_access_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'folders_access_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'folders_access_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'folders_access_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'folder_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'folder_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'folder_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'folder_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcp_custom_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcp_custom_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcp_custom_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcp_custom_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'created_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'created_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'created_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'created_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_locked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_locked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_locked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_locked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_folder_sticky'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_folder_sticky'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_folder_sticky'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_folder_sticky'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_highlighted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_highlighted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_highlighted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_highlighted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'folders_file_replaced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'folders_file_replaced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'folders_file_replaced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'folders_file_replaced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
