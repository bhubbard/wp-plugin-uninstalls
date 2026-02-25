#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kmcf7se_message_delete_data'
wp option delete 'kmcf7se_provider'
wp option delete 'kmcf7se_show_errors'
wp option delete 'kmcf7se_show_whatsapp_errors'
wp option delete 'kmcf7se_api_sid'
wp option delete 'kmcf7se_api_token'
wp option delete 'kmcf7se_senderid'
wp option delete 'km_error'
wp option delete 'km_error_message'
wp option delete 'kmcf7se_whatsapp_number'
wp option delete 'kmcf7se_whatsapp_key'
wp option delete 'kmcf7se_whatsapp_language'
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

