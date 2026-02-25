-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpforms_status', 'cf7ic-ajax', 'cf7ic_plugin_do_activation_redirect', 'cf7ic_timestamp');

