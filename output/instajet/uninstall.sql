-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('instajet_license_key', 'instajet_options', 'instajet_db_version', 'rewrite_rules', 'instajet_license_status', 'recently_activated', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%page_id';
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%_license_key';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status';
DELETE FROM wp_options WHERE option_name LIKE '%_licence_key';
DELETE FROM wp_options WHERE option_name LIKE '%_licence_status';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ij_current_login', 'ij_ij_last_login', 'requested_jets', 'flight_status', 'flight_quote', 'user_details', 'journey_id', 'max_passengers', 'total_distance', 'longest_leg', '_wp_page_template', 'ij_max_range', 'ij_cruise_speed', 'ij_bcpf', 'ij_cph', 'ij_pax', '_smartmeta_ij_cruise_speed', '_smartmeta_ij_pax', '_smartmeta_ij_max_range', '_smartmeta_ij_cph', '_smartmeta_ij_bcpf', 'tgmpa_dismissed_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('ij_current_login', 'ij_ij_last_login', 'requested_jets', 'flight_status', 'flight_quote', 'user_details', 'journey_id', 'max_passengers', 'total_distance', 'longest_leg', '_wp_page_template', 'ij_max_range', 'ij_cruise_speed', 'ij_bcpf', 'ij_cph', 'ij_pax', '_smartmeta_ij_cruise_speed', '_smartmeta_ij_pax', '_smartmeta_ij_max_range', '_smartmeta_ij_cph', '_smartmeta_ij_bcpf', 'tgmpa_dismissed_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('ij_current_login', 'ij_ij_last_login', 'requested_jets', 'flight_status', 'flight_quote', 'user_details', 'journey_id', 'max_passengers', 'total_distance', 'longest_leg', '_wp_page_template', 'ij_max_range', 'ij_cruise_speed', 'ij_bcpf', 'ij_cph', 'ij_pax', '_smartmeta_ij_cruise_speed', '_smartmeta_ij_pax', '_smartmeta_ij_max_range', '_smartmeta_ij_cph', '_smartmeta_ij_bcpf', 'tgmpa_dismissed_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ij_current_login', 'ij_ij_last_login', 'requested_jets', 'flight_status', 'flight_quote', 'user_details', 'journey_id', 'max_passengers', 'total_distance', 'longest_leg', '_wp_page_template', 'ij_max_range', 'ij_cruise_speed', 'ij_bcpf', 'ij_cph', 'ij_pax', '_smartmeta_ij_cruise_speed', '_smartmeta_ij_pax', '_smartmeta_ij_max_range', '_smartmeta_ij_cph', '_smartmeta_ij_bcpf', 'tgmpa_dismissed_notice');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

