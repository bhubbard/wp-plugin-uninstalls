-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mos_speed_up_options', 'mos_speed_up_do_activation_redirect');

