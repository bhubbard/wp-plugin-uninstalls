#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mspsfw_disable_remote_updates'
wp option delete 'mspsfw_remove_data_on_delete'
wp option delete 'mspsfw_sync_child_sites'
wp option delete 'mspsfw_sync_email_schedule'
wp option delete 'mspsfw_sync_only_on_child'
wp option delete 'mspsfw_sync_missing_from_child'
wp option delete 'mspsfw_sync_needing_price_update'
wp option delete 'mspsfw_sync_all_products'
wp option delete 'mspsfw_sync_recipient_emails'
wp option delete 'mspsfw_sync_automated_sync'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

