-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('connect_ez_plugin_options', 'connect_ez_plugin_do_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'sip_form_token_%';
DELETE FROM wp_options WHERE option_name LIKE 'sip_secure_data_%';

