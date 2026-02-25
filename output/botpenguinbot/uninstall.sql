-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('test_plugin_variable', 'BOTPENGUIN_do_activation_redirect');

