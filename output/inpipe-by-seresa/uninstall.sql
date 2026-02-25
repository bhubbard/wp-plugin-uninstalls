-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('inpipe_anonymize_ip', 'inpipe_tracked_cache_keys', 'inpipe_subscription', 'inpipe_license_status', 'inpipe_assets_version', 'inpipe_api_key', 'inpipe_license_features', 'inpipe_subscription_log_retention_days', 'inpipe_settings', 'inpipe_premium_status', 'inpipe_has_premium', 'inpipe_premium_version', 'inpipe_usage_data', 'inpipe_last_webhook', 'inpipe_premium_settings', 'inpipe_premium_enabled_date', 'inpipe_utm_processing_enabled', 'inpipe_batch_size', 'inpipe_batch_interval', 'inpipe_is_configured', 'inpipe_tracking_server_url', 'inpipe_last_sync', 'inpipe_db_version', 'inpipe_install_error', 'inpipe_installing_table', 'inpipe_last_backup', 'inpipe_premium_integrated', 'inpipe_premium_install_status', 'inpipe_temp_subscription_code', 'inpipe_pending_premium_package', 'inpipe_pending_refresh_after_install', 'inpipe_premium_install_date', 'inpipe_premium_active', 'inpipe_premium_verification_error', 'inpipe_premium_installed', 'inpipe_verification_data', 'inpipe_installing', 'inpipe_hard_refresh_required');
DELETE FROM wp_options WHERE option_name LIKE 'inpipe_%';
DELETE FROM wp_options WHERE option_name LIKE 'inpipe_table_created_%';
DELETE FROM wp_options WHERE option_name LIKE 'inpipe_tables_created_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('inpipe_premium_workflow_step', 'inpipe_queued_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('inpipe_premium_workflow_step', 'inpipe_queued_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('inpipe_premium_workflow_step', 'inpipe_queued_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('inpipe_premium_workflow_step', 'inpipe_queued_notices');

