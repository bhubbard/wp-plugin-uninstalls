-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('su_option_unsafe_features', 'su_option_unsafe_features_auto_off', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'su_option_hide_deprecated', 'su_option_custom-css', 'su_option_skin', 'su_option_supported_blocks', 'su_option_show_toolbar_button', 'su_option_show_block_controls_button', 'su_option_skip', 'su_option_generator_access', 'su_option_prefix', 'su_option_enable_shortcodes_in', 'su_option_custom-formatting', 'su_option_galleries-432', 'su_option_version', 'su_option_do_nested_shortcodes_alt', 'su_vote', 'su_option_dismissed_notices', 'su_installed', 'su_generator_access', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'su_presets_%';
DELETE FROM wp_options WHERE option_name LIKE 'su/generator/settings/%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('su_slide_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('su_slide_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('su_slide_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('su_slide_link');

