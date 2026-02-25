-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_sunday';
DELETE FROM wp_options WHERE option_name LIKE '%_monday';
DELETE FROM wp_options WHERE option_name LIKE '%_tuesday';
DELETE FROM wp_options WHERE option_name LIKE '%_wednesday';
DELETE FROM wp_options WHERE option_name LIKE '%_thursday';
DELETE FROM wp_options WHERE option_name LIKE '%_friday';
DELETE FROM wp_options WHERE option_name LIKE '%_saturday';
DELETE FROM wp_options WHERE option_name LIKE '%_highlightCurrent';
DELETE FROM wp_options WHERE option_name LIKE '%_highlightStyle';
DELETE FROM wp_options WHERE option_name LIKE '%_highlightColor';
DELETE FROM wp_options WHERE option_name LIKE '%_currentDayOnly';
DELETE FROM wp_options WHERE option_name LIKE '%_dense';
DELETE FROM wp_options WHERE option_name LIKE '%_format24hour';
DELETE FROM wp_options WHERE option_name LIKE '%_license_key';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE '%_first_name';
DELETE FROM wp_options WHERE option_name LIKE '%_last_name';
DELETE FROM wp_options WHERE option_name LIKE '%_email';
DELETE FROM wp_options WHERE option_name LIKE '%_token';

