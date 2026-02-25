-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssbhm_locations', 'ssbhm_do_activation_redirect');

