-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ft_calendar_options', 'ftcalendar_meta', 'ftc_ec3_imported', 'ftcal_show_discount', 'ft_cal_db_version', 'ft_cal_version', 'rss_language');
DELETE FROM wp_options WHERE option_name LIKE '%_meta';
DELETE FROM wp_options WHERE option_name LIKE 'external_updates-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('feature_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('feature_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('feature_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('feature_image');

