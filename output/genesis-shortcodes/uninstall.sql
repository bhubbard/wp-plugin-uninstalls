-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'gsc_plugin_%';
DELETE FROM wp_options WHERE option_name LIKE 'gsc_plugin_banner_%';

