-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('job_manager_enable_types', 'job_manager_enable_categories');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_application_deadline', '_job_expires', 'geolocation_city', '_job_location', 'geolocation_state_long', 'geolocation_country_short', 'geolocated', 'geolocation_lat', 'geolocation_long', '_company_tagline');
DELETE FROM wp_usermeta WHERE meta_key IN ('_application_deadline', '_job_expires', 'geolocation_city', '_job_location', 'geolocation_state_long', 'geolocation_country_short', 'geolocated', 'geolocation_lat', 'geolocation_long', '_company_tagline');
DELETE FROM wp_termmeta WHERE meta_key IN ('_application_deadline', '_job_expires', 'geolocation_city', '_job_location', 'geolocation_state_long', 'geolocation_country_short', 'geolocated', 'geolocation_lat', 'geolocation_long', '_company_tagline');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_application_deadline', '_job_expires', 'geolocation_city', '_job_location', 'geolocation_state_long', 'geolocation_country_short', 'geolocated', 'geolocation_lat', 'geolocation_long', '_company_tagline');

