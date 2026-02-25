-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gps_height', 'gps_title', 'gps_ctime', 'gps_ctime_prof', 'gps_m2c', 'gps_cache', 'gps_cache_prof', 'gps_credit', 'gps_profid', 'gps_nopost', 'gps_dimage', 'gps_nowordpost');

