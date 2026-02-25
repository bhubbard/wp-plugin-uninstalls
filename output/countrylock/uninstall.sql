-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tscl_show_activation_notice', 'tscl_settings', 'cl_settings', 'cl_show_activation_notice');

