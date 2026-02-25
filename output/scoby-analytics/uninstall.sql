-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scoby_analytics_version', 'scoby_analytics_options', 'scoby_analytics_check_config', 'scoby_analytics_flush_cache_notice', 'scoby_analytics_use_client_integration');

