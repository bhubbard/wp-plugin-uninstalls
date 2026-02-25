-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tz_email', 'formstyle', 'dpbsf_plugin_do_activation_redirect');

