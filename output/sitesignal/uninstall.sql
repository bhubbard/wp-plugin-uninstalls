-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dreamcore_monitor_api_key', 'dreamcore_monitor_site_id', 'dreamcore_monitor_enable_logging', 'dreamcore_monitor_log_retention', 'dreamcore_monitor_enable_api', 'dreamcore_monitor_enable_geolocation', 'dreamcore_monitor_enable_useragent_tracking', 'active_sitewide_plugins');

