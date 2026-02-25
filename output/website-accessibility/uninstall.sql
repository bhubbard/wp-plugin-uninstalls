-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bdt_biggopti_dismissals', 'websac_settings', 'websac_version', 'websac_installed_time', 'websac_do_activation_redirect');

