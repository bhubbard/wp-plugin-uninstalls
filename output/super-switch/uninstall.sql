-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recently_activated', 'clss_options', 'update_core', 'update_plugins', 'update_themes', 'update_core', 'update_plugins', 'update_themes');

