-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_update_themes', 'auto_update_plugins', 'update_themes', 'update_plugins');

