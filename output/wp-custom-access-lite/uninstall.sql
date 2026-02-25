-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CUSTOM_ACCESS_LITE_opties_array', 'CUSTOM_ACCESS_LITE_email_options', 'CUSTOM_ACCESS_LITE_Logger_pages', 'CUSTOM_ACCESS_LITE_VERSION', 'my_plugin_db_version');

