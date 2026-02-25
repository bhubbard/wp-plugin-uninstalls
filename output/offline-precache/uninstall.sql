-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('offline_precache_enabled_ga', 'offline_precache_page_id', 'Activated_Offline_Precache', 'offline_precache_custom_strategies', 'offline_precache_enabled');

