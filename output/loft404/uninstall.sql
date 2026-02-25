-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('loft404_mode', 'loft404_page_id', 'loft404_plugin_version');

