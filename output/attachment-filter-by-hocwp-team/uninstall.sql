-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hocwp_plugin_core_version', 'hocwp_plugins', 'hocwp_theme_flush_rewrite_rules');

