-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blogidpascs', 'pascs_plugin_do_activation_redirect');

