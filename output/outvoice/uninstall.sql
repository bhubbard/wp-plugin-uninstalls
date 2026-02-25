-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('outvoice_users', 'outvoice_plugin_options', 'outvoice_options', 'outvoice_error', 'outvoice_success', 'outvoice_status');

