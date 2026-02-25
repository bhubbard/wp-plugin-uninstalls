-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hmls_plugin_settings_have_changed', 'hmls_grid_temp_settings', 'hmls_grid_content_settings', 'hmls_grid_style_settings', 'hmls_slide_content_settings', 'hmls_slide_styles_settings', 'hmls_slide_template_settings', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hmls_logo_url', 'hmls_status', 'hmls_img_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('hmls_logo_url', 'hmls_status', 'hmls_img_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('hmls_logo_url', 'hmls_status', 'hmls_img_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hmls_logo_url', 'hmls_status', 'hmls_img_url');

