-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reportpressing_options', 'update_plugins', 'update_themes');

