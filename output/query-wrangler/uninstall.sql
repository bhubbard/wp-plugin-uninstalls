-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qw_plugin_version', 'qw_edit_theme', 'qw_live_preview', 'qw_show_silent_meta', 'qw_meta_value_field_handler', 'qw_widget_theme_compat', 'query_wrangler_meta_keys_cache');

