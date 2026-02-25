-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wt_time_1', '_wt_time_2', '_wt_time_3', '_wt_time_4');
DELETE FROM wp_options WHERE option_name LIKE '_wt_time_%';

