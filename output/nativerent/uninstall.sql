-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nativerent_options', 'nativerent.jsURL', 'nativerent.cssURL', 'nativerent.selfCheckReport', 'nativerent.adUnitsConfig', 'wp_rocket_settings');
DELETE FROM wp_options WHERE option_name LIKE 'nativerent.%';

