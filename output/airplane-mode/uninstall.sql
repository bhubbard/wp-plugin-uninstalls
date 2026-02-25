-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('airplane-mode', 'wporg_theme_feature_list', 'update_core', 'update_plugins', 'update_themes');

