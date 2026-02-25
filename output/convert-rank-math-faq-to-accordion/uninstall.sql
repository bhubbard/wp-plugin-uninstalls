-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('INBRMFA_plugin_do_activation_redirect', 'INBRMFA_options');

