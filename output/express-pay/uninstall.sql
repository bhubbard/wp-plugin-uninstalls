-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('expresspay_plugin_ult', 'expresspay_plugin_is_active');

