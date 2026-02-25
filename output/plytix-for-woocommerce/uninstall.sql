-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plytix-settings', 'plytix-settings-options', 'plytix-settings-options-use-field-gtin', 'plytix_site_configuration', 'plytix_plugin_folder_id', 'plytix_api_credentials', 'plytix_config_first_time', 'plytix_show_config_msg_ok', 'plytix_redirect', 'plytix_show_api_msg_ok');

