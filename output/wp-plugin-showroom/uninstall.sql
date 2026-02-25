-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plgshow_plugin_version');
DELETE FROM wp_options WHERE option_name LIKE 'plgshow_%';

