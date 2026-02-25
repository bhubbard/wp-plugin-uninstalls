-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'cropilot_access_token', 'cropilot_refresh_token', 'cropilot_woocommerce_enabled', 'cropilot_debug_mode', 'cropilot_consent_mode', 'woocommerce_enable_ajax_add_to_cart', 'cropilot_client_id', 'cropilot_health_etag', 'cropilot_health_data_cache', 'cropilot_woocommerce_registered', 'cropilot_scan_task_id');

