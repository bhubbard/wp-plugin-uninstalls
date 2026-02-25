-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'ip_geo_block_settings', 'ip_geo_block_statistics', 'ip_geo_block_cache');
DELETE FROM wp_options WHERE option_name LIKE '%-live-log';

