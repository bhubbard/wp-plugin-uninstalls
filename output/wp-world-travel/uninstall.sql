-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpwt_settings', 'wpwt_schedule', 'wpwt_meetups');

