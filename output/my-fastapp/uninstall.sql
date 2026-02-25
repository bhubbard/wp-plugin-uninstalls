-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_myfastapp_external_api_uri', 'plugin_myfastapp_live_config', 'plugin_myfastapp_app_config', 'plugin_myfastapp_menu_item', 'plugin_myfastapp_installed');

