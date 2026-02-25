-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dawufeg_debug', 'dawufeg_debug_log', 'dawufeg_debug_display', 'dawufeg_fs_method', 'dawufeg_gutenburg', 'dawufeg_gutenburg_widget', 'dawufeg_plugin_updates', 'dawufeg_theme_updates', 'dawufeg_theme_editor', 'dawufeg_modification_updates', 'upload_filter_first_time', 'edit_filter_first_time', 'plugin_first_time', 'dawufeg_major_core_updates', 'dawufeg_minor_core_updates', 'core_update_first_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dawufeg_rate_notices', 'dawufeg_notices_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('dawufeg_rate_notices', 'dawufeg_notices_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('dawufeg_rate_notices', 'dawufeg_notices_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dawufeg_rate_notices', 'dawufeg_notices_time');

