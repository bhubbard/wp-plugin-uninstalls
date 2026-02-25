-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('f12_cf7_doubleoptin_installed_at', 'f12-doi-settings', 'f12_cf7_doubleoptin_installation_uuid', 'f12_cf7_doubleoptin_telemetry_counters', 'f12_cf7_doubleoptin_review_dismissed', 'f12_cf7_doubleoptin_review_remind_later', 'f12_cf7_doubleoptin_review_remind_count');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('f12-cf7-doubleoptin', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('f12-cf7-doubleoptin', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('f12-cf7-doubleoptin', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('f12-cf7-doubleoptin', '_elementor_data');

