-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_draupnir_settings');
DELETE FROM wp_options WHERE option_name LIKE 'draupnir_%';

