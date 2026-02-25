-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('SL_framework_options', 'plugin_error_on_activation');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

