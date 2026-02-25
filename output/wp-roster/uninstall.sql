-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_roster_settings', 'northern_beaches_websites', 'wp-roster-update');
DELETE FROM wp_options WHERE option_name LIKE 'wp_roster_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_roster_data_history_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_roster_data_log_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_roster_data_attendance_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp-roster-roster-allocation', 'wp-roster-profile-photo', 'wp-roster-preference', 'wp-roster-phone', 'wp_capabilities', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp-roster-roster-allocation', 'wp-roster-profile-photo', 'wp-roster-preference', 'wp-roster-phone', 'wp_capabilities', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp-roster-roster-allocation', 'wp-roster-profile-photo', 'wp-roster-preference', 'wp-roster-phone', 'wp_capabilities', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp-roster-roster-allocation', 'wp-roster-profile-photo', 'wp-roster-preference', 'wp-roster-phone', 'wp_capabilities', '_wp_page_template');

