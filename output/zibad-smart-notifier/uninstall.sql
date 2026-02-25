-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zimsn_workflows', 'zimsn_default_country', 'zimsn_default_gateway', 'zimsn_default_fallback_gateway', 'zimsn_gateway_twilio', 'zimsn_default_global_gateway', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'zimsn_gateway_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'phone', 'first_name', '_zimsn_last_cart_activity');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'phone', 'first_name', '_zimsn_last_cart_activity');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'phone', 'first_name', '_zimsn_last_cart_activity');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'phone', 'first_name', '_zimsn_last_cart_activity');

