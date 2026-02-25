-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kabook_editor_tools_settings', 'kabook_activated_notice');

