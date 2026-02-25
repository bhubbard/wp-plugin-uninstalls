-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_codes_ajax', '_codes_sound', '_codes_shortcut', '_codes_emmet', '_codes_initial_editor', '_codes_desktop', '_codes_tablet_l', '_codes_tablet_p', '_codes_phone_l', '_codes_phone_p', '_codes_retina', '_codes_output_order', '_codes_admin_bar', '_codes_store', '_codes_version', '_codes_ai_provider', '_codes_openai_key', '_codes_google_key', '_codes_google_models', '_codes_openai_models', 'codes_ai_notice_dismissed', '_codes_location', 'cstm_cds_style_mode', 'cstm_cds_permission_roles', 'cstm_cds_js_head_save_count', 'cstm_cds_admin_notes', 'cstm_cds_css_save_count', 'cstm_cds_admin_css_save_count', 'cstm_cds_js_bottom_save_count', 'cstm_cds_admin_js_head_save_count', 'cstm_cds_admin_js_bottom_save_count', 'cstm_cds_tablet_l', 'cstm_cds_tablet_p', 'cstm_cds_phone_l', 'cstm_cds_phone_p', 'cstm_cds_store_files', 'cstm_cds_editor_theme', 'cstm_cds_admin_roles', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%css_save_count';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_codes_language', '_codes_location', '_codes_adminroles', '_codes_show_breakpoints', '_codes_savecount', '_codes_theme', '_codes_fontsize', '_codes_indent', '_edit_last');
DELETE FROM wp_usermeta WHERE meta_key IN ('_codes_language', '_codes_location', '_codes_adminroles', '_codes_show_breakpoints', '_codes_savecount', '_codes_theme', '_codes_fontsize', '_codes_indent', '_edit_last');
DELETE FROM wp_termmeta WHERE meta_key IN ('_codes_language', '_codes_location', '_codes_adminroles', '_codes_show_breakpoints', '_codes_savecount', '_codes_theme', '_codes_fontsize', '_codes_indent', '_edit_last');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_codes_language', '_codes_location', '_codes_adminroles', '_codes_show_breakpoints', '_codes_savecount', '_codes_theme', '_codes_fontsize', '_codes_indent', '_edit_last');

