#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inpipe_anonymize_ip'
wp option delete 'inpipe_tracked_cache_keys'
wp option delete 'inpipe_subscription'
wp option delete 'inpipe_license_status'
wp option delete 'inpipe_assets_version'
wp option delete 'inpipe_api_key'
wp option delete 'inpipe_license_features'
wp option delete 'inpipe_subscription_log_retention_days'
wp option delete 'inpipe_settings'
wp option delete 'inpipe_premium_status'
wp option delete 'inpipe_has_premium'
wp option delete 'inpipe_premium_version'
wp option delete 'inpipe_usage_data'
wp option delete 'inpipe_last_webhook'
wp option delete 'inpipe_premium_settings'
wp option delete 'inpipe_premium_enabled_date'
wp option delete 'inpipe_utm_processing_enabled'
wp option delete 'inpipe_batch_size'
wp option delete 'inpipe_batch_interval'
wp option delete 'inpipe_is_configured'
wp option delete 'inpipe_tracking_server_url'
wp option delete 'inpipe_last_sync'
wp option delete 'inpipe_db_version'
wp option delete 'inpipe_install_error'
wp option delete 'inpipe_installing_table'
wp option delete 'inpipe_last_backup'
wp option delete 'inpipe_premium_integrated'
wp option delete 'inpipe_premium_install_status'
wp option delete 'inpipe_temp_subscription_code'
wp option delete 'inpipe_pending_premium_package'
wp option delete 'inpipe_pending_refresh_after_install'
wp option delete 'inpipe_premium_install_date'
wp option delete 'inpipe_premium_active'
wp option delete 'inpipe_premium_verification_error'
wp option delete 'inpipe_premium_installed'
wp option delete 'inpipe_verification_data'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_inpipe_%' OR option_name LIKE '_site_transient_inpipe_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_inpipe_table_created_%' OR option_name LIKE '_site_transient_inpipe_table_created_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_inpipe_tables_created_%' OR option_name LIKE '_site_transient_inpipe_tables_created_%'"
wp transient delete 'inpipe_installing'
wp transient delete 'inpipe_hard_refresh_required'

# Clear Cron Jobs
wp cron event delete 'inpipe_cleanup_nonce_transients'
wp cron event delete 'inpipe_sync_subscription_data'
wp cron event delete 'inpipe_background_premium_installation'
wp cron event delete 'inpipe_daily_cleanup'
wp cron event delete 'inpipe_send_events'
wp cron event delete 'inpipe_cleanup_logs'
wp cron event delete 'inpipe_cleanup_queue'
wp cron event delete 'inpipe_utm_logs_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inpipe_premium_workflow_step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inpipe_premium_workflow_step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inpipe_premium_workflow_step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inpipe_premium_workflow_step'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inpipe_queued_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inpipe_queued_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inpipe_queued_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inpipe_queued_notices'"
