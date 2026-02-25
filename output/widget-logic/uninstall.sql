-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_logic_settings_options', 'widget_logic');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

