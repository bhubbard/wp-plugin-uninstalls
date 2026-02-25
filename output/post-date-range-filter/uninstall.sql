-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blogidpdrf', 'pdrf_plugin_do_activation_redirect');

