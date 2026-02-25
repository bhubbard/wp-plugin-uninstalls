-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pdt_settings_v2_migrated', 'pdt_settings', 'pdt_menu_items');

