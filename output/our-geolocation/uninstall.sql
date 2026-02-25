-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('our-geolocation-getdir', 'our-geolocation-address', 'our-geolocation-latitude', 'our-geolocation-longitude', 'our-geolocation-width', 'our-geolocation-height');

