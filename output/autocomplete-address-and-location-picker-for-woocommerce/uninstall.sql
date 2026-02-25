-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aafw_google_api_key', 'aafw_shipping_autocomplete', 'aafw_billing_autocomplete', 'aafw_initial_map', 'aafw_address_format', 'aafw_debug_logs', 'aafw_pickup_autocomplete', 'aafw_activation_date', 'aafw_review_action', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'aafw_center_map_latitude', 'aafw_center_map_longitude', 'aafw_map_zoom', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

