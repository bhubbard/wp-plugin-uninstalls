-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adv_vis_ele_auto_play_library_videos', 'adv_vis_ele_global_mobile_breakpoint', 'adv_vis_ele_enable_default_meta_viewport', 'adv_vis_ele_delete_settings_on_uninstall', 'adv_vis_ele_disable_admin_commands_frontend', 'adv_vis_ele_library_info_v2', 'adv_vis_ele_library_info', 'adv_vis_ele_installed_elements', 'adv_vis_ele_library_version', 'adv_vis_ele_site_url', 'adv_vis_ele_library_info_new', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('adv-vis-ele-element_id', 'adv-vis-ele-custom_css', 'adv-vis-ele-mobile_breakpoint', 'adv-vis-ele-disable_on_mobile', 'adv-vis-ele-container_styles', 'adv-vis-ele-container_styles_vertical', 'adv-vis-ele-editor-settings-preview', 'adv-vis-ele-editor-settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('adv-vis-ele-element_id', 'adv-vis-ele-custom_css', 'adv-vis-ele-mobile_breakpoint', 'adv-vis-ele-disable_on_mobile', 'adv-vis-ele-container_styles', 'adv-vis-ele-container_styles_vertical', 'adv-vis-ele-editor-settings-preview', 'adv-vis-ele-editor-settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('adv-vis-ele-element_id', 'adv-vis-ele-custom_css', 'adv-vis-ele-mobile_breakpoint', 'adv-vis-ele-disable_on_mobile', 'adv-vis-ele-container_styles', 'adv-vis-ele-container_styles_vertical', 'adv-vis-ele-editor-settings-preview', 'adv-vis-ele-editor-settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('adv-vis-ele-element_id', 'adv-vis-ele-custom_css', 'adv-vis-ele-mobile_breakpoint', 'adv-vis-ele-disable_on_mobile', 'adv-vis-ele-container_styles', 'adv-vis-ele-container_styles_vertical', 'adv-vis-ele-editor-settings-preview', 'adv-vis-ele-editor-settings');

