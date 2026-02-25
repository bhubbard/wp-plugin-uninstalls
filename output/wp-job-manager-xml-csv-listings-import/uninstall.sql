-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('job_manager_google_maps_api_key', 'job_manager_submission_duration');
DELETE FROM wp_options WHERE option_name LIKE '%_ignore';
DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('geolocated');
DELETE FROM wp_usermeta WHERE meta_key IN ('geolocated');
DELETE FROM wp_termmeta WHERE meta_key IN ('geolocated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('geolocated');

