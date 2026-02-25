-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bfe_front_editor_wp_admin_menu', 'bfe_front_editor_edit_button_position', 'bfe_front_editor_edit_button_text', 'bfe_general_settings_login_register_group_options', 'bfe_is_front_editor_pro_version_exist', 'bfe_general_user_admin_settings_group_options', 'bfe_front_editor_google_map_api', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bfe_editor_js_data', 'fe_post_updated_from_admin', 'formBuilderData', 'fe_form_settings', 'BFE_the_post_edited_by', 'fus_post_created_from_page', 'fus_user_ip_address', 'add_to_cart_custom_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('bfe_editor_js_data', 'fe_post_updated_from_admin', 'formBuilderData', 'fe_form_settings', 'BFE_the_post_edited_by', 'fus_post_created_from_page', 'fus_user_ip_address', 'add_to_cart_custom_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('bfe_editor_js_data', 'fe_post_updated_from_admin', 'formBuilderData', 'fe_form_settings', 'BFE_the_post_edited_by', 'fus_post_created_from_page', 'fus_user_ip_address', 'add_to_cart_custom_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bfe_editor_js_data', 'fe_post_updated_from_admin', 'formBuilderData', 'fe_form_settings', 'BFE_the_post_edited_by', 'fus_post_created_from_page', 'fus_user_ip_address', 'add_to_cart_custom_data');

