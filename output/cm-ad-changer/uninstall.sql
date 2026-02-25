-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acs_div_wrapper', 'acs_class_name', 'acs_slideshow_effect', 'acs_slideshow_interval', 'acs_slideshow_transition_time', 'active_sitewide_plugins', 'acs_active', 'cmac_afterActivation');
DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped';
DELETE FROM wp_options WHERE option_name LIKE '%-registered';
DELETE FROM wp_options WHERE option_name LIKE '%-was-registered';

