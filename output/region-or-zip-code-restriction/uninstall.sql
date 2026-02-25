-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_restricted_zipcodes';
DELETE FROM wp_options WHERE option_name LIKE '%_restrict_based_on';
DELETE FROM wp_options WHERE option_name LIKE '%_zone_regions';
DELETE FROM wp_options WHERE option_name LIKE '%_error';

