#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rimoq_settings'
wp option delete 'rimoq_resync_status'
wp option delete 'rimoq_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rimoq_error_%' OR option_name LIKE '_site_transient_rimoq_error_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rimoq_success_%' OR option_name LIKE '_site_transient_rimoq_success_%'"
wp transient delete 'rimoq_admin_errors'
wp transient delete 'rimoq_api_call_details'
wp transient delete 'rimoq_admin_success'
wp transient delete 'rimoq_resync_queue'
wp transient delete 'rimoq_resync_report'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rimoq_bot_info_%' OR option_name LIKE '_site_transient_rimoq_bot_info_%'"
wp transient delete 'rimoq_welcome_notice'
wp transient delete 'rimoq_api_status'
wp transient delete 'rimoq_last_sync_time'
wp transient delete 'rimoq_resync_status'

# Clear Cron Jobs
wp cron event delete 'rimoq_resync_process_queue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
