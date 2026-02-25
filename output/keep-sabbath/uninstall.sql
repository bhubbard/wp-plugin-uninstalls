-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('keepsabbath_setting_latitude', 'keepsabbath_setting_longitude', 'keepsabbath_setting_holy_day_dates', 'keepsabbath_setting_pages_to_redirect', 'keepsabbath_setting_redirect_to_page');
DELETE FROM wp_options WHERE option_name LIKE '%_latitude';
DELETE FROM wp_options WHERE option_name LIKE '%_longitude';
DELETE FROM wp_options WHERE option_name LIKE '%_holy_day_dates';
DELETE FROM wp_options WHERE option_name LIKE '%_pages_to_redirect';
DELETE FROM wp_options WHERE option_name LIKE '%_redirect_to_page';

