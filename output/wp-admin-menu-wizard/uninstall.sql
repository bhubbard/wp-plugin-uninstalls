-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ad_menu_settings_option', 'ad_menu_settings_toggle');

