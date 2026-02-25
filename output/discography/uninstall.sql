-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('discography', 'discography_db_version', 'discography_plugin_version');

