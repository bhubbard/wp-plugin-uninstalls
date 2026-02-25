-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wplocalseo_cleaner_time', 'wplocalseo_cleaner_time_old', 'wplocalseo_cleaner_autoptimize', 'wplocalseo_cleaner_w3totalcache', 'wplocalseo_cleaner_wpsupercache', 'wplocalseo_cleaner_wpfastestcache', 'wplocalseo_cleaner_cometcache', 'wplocalseo_cleaner_cacheenabler', 'wplocalseo_cleaner_rocket', 'wplocalseo_cleaner_notify', 'wplocalseo_cleaner_notificationsemail');

