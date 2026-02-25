-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ubermediasettings_settings', 'mmp_version', '_mmp_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

