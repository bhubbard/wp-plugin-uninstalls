-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpfbr_google_options', 'wprevpro_yelp_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_times_ran';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

