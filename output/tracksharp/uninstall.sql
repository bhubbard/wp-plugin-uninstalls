-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ws_do_activation_redirect', 'tracksharp_consent_fallback', 'tracksharp_ga4_attribution_mode', 'tracksharp_revenue_excl_tax', 'tracksharp_ga4_use_purchase_sst', 'tracksharp_log_retention_days', 'tracksharp_ga4_measurement_id', 'tracksharp_ga4_api_secret', 'tracksharp_meta_pixel_id', 'tracksharp_meta_access_token', 'tracksharp_meta_test_event_code', 'tracksharp_do_activation_redirect', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ws_ga4_browser_purchase_sent', '_ws_ga4_browser_purchase_event_id', '_ws_ga4_browser_purchase_event', '_ws_ga4_purchase_fallback_scheduled', '_ws_ga4_purchase_sent', '_ws_purchase_sst_sent', '_ws_meta_purchase_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ws_ga4_browser_purchase_sent', '_ws_ga4_browser_purchase_event_id', '_ws_ga4_browser_purchase_event', '_ws_ga4_purchase_fallback_scheduled', '_ws_ga4_purchase_sent', '_ws_purchase_sst_sent', '_ws_meta_purchase_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ws_ga4_browser_purchase_sent', '_ws_ga4_browser_purchase_event_id', '_ws_ga4_browser_purchase_event', '_ws_ga4_purchase_fallback_scheduled', '_ws_ga4_purchase_sent', '_ws_purchase_sst_sent', '_ws_meta_purchase_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ws_ga4_browser_purchase_sent', '_ws_ga4_browser_purchase_event_id', '_ws_ga4_browser_purchase_event', '_ws_ga4_purchase_fallback_scheduled', '_ws_ga4_purchase_sent', '_ws_purchase_sst_sent', '_ws_meta_purchase_sent');

