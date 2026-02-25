-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_adminify_activity_logs_days', 'adminify_activity_logs_version', 'jltwp_adminify_activitylogs_sheet_promo_data', 'jltwp_adminify_activitylogs_sheet_promo_data_hash', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'adminify_activitylogs_activation_time', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE 'jltwp_adminify_activitylogs-plugin-info-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state');

