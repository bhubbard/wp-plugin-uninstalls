-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crowdsec_stream_mode', 'crowdsec_api_url', 'crowdsec_usage_metrics', 'crowdsec_cache_system', 'crowdsec_clean_ip_cache_duration', 'crowdsec_bad_ip_cache_duration', 'crowdsec_trust_ip_forward_array', 'crowdsec_geolocation_maxmind_database_path', 'crowdsec_api_key', 'crowdsec_stream_mode_refresh_frequency');

