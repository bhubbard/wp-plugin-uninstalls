-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wwrt_settings', 'wwrt_run_log', 'wwrt_cronjobs', 'wwrt_options', 'wwrt_watchdog_cleanup_v2', 'weatherwrite_options', 'wwrt_events', 'wwrt_special_posts');
DELETE FROM wp_options WHERE option_name LIKE '%_mail';
DELETE FROM wp_options WHERE option_name LIKE '%_webhook';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wwrt_daily7', '_wwrt_next24h_time', '_wwrt_next24h_temp', '_wwrt_next24h_precip', '_wwrt_next24h_precip_prob', '_wwrt_units', '_wwrt_alert_baked', '_wwrt_alert_active', '_wwrt_alert', '_wwrt_alerts_all', '_wwrt_geonameid', '_wwrt_lat', '_wwrt_lon', '_wwrt_generated_at', '_wwrt_schedule_time', '_wwrt_raw_openmeteo', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wwrt_daily7', '_wwrt_next24h_time', '_wwrt_next24h_temp', '_wwrt_next24h_precip', '_wwrt_next24h_precip_prob', '_wwrt_units', '_wwrt_alert_baked', '_wwrt_alert_active', '_wwrt_alert', '_wwrt_alerts_all', '_wwrt_geonameid', '_wwrt_lat', '_wwrt_lon', '_wwrt_generated_at', '_wwrt_schedule_time', '_wwrt_raw_openmeteo', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wwrt_daily7', '_wwrt_next24h_time', '_wwrt_next24h_temp', '_wwrt_next24h_precip', '_wwrt_next24h_precip_prob', '_wwrt_units', '_wwrt_alert_baked', '_wwrt_alert_active', '_wwrt_alert', '_wwrt_alerts_all', '_wwrt_geonameid', '_wwrt_lat', '_wwrt_lon', '_wwrt_generated_at', '_wwrt_schedule_time', '_wwrt_raw_openmeteo', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wwrt_daily7', '_wwrt_next24h_time', '_wwrt_next24h_temp', '_wwrt_next24h_precip', '_wwrt_next24h_precip_prob', '_wwrt_units', '_wwrt_alert_baked', '_wwrt_alert_active', '_wwrt_alert', '_wwrt_alerts_all', '_wwrt_geonameid', '_wwrt_lat', '_wwrt_lon', '_wwrt_generated_at', '_wwrt_schedule_time', '_wwrt_raw_openmeteo', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw');

