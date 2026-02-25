-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('opm_options', '_opm_messages', 'starterpack_options', 'opm_do_activation_redirect');

