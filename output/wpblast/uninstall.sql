-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WpFastestCacheExclude', 'WpFastestCache', 'wpblast_plugin_version', 'wpblast_db_version', 'wpblast_home', 'wpblast_crawler');
DELETE FROM wp_options WHERE option_name LIKE '%_firstActivation';
DELETE FROM wp_options WHERE option_name LIKE '%_plugindata';
DELETE FROM wp_options WHERE option_name LIKE '%_autoregexp';
DELETE FROM wp_options WHERE option_name LIKE '%_user';
DELETE FROM wp_options WHERE option_name LIKE '%_purgeExceededItemsCacheTimestamp';
DELETE FROM wp_options WHERE option_name LIKE '%_cleanExpiredCacheTimestamp';

