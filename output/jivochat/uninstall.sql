-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jivosite_token', 'jivosite_widget_id', 'jivosite_lang_code', 'jivosite_plugin_version');
DELETE FROM wp_options WHERE option_name LIKE 'jivosite_%';

