-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zsw_plugin_do_activation_redirect', 'z2_api_key');

