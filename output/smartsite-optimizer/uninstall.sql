-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smopt_options', 'smopt_version', 'smopt_activation_time');

