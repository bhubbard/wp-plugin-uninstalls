-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('updatenote_options', 'current_theme', 'update_core', 'update_plugins', 'update_themes');

