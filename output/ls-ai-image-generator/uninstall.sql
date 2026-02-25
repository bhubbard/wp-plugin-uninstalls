-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'ls_aiig_default_aspect', 'ls_aiig_default_model', 'ls_aiig_default_output_format', 'ls_aiig_ci_primary', 'ls_aiig_ci_secondary', 'ls_aiig_ci_accent', 'ls_aiig_default_image_type', 'ls_aiig_default_style', 'ls_aiig_default_color_mood', 'ls_aiig_default_font_style', 'ls_aiig_openai_key', 'ls_aiig_gemini_key', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

