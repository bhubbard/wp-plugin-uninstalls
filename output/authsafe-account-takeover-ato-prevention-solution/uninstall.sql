-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ats_options', 'ats_policy_options', 'activate_authsafe', 'your_plugin_redirect');

