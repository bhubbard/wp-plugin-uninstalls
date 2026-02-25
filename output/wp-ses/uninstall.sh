#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wposes_tracking_key'
wp option delete 'site_admins'
wp option delete 'wposes_last_cron_run'
wp option delete 'wposes_last_cron_check'
wp option delete 'wposes_cron_error_email'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wposes_constant_%'"
wp option delete 'wposes_lite_version'
wp option delete 'wposes_doing_upgrade'
wp option delete 'wposes_settings'
wp option delete 'wpses_options'

# Delete Transients
wp transient delete 'wposes_deactivated_notice_id'
wp transient delete 'wposes_unverified_senders'
wp transient delete 'wposes_notices'
wp transient delete 'wposes_doing_cron_check'
wp transient delete 'wposes_verified_senders'
wp transient delete 'wposes_triggered_queue'

# Clear Cron Jobs
wp cron event delete 'deliciousbrains_wp_offload_ses_log_cleanup'
wp cron event delete 'deliciousbrains_wp_offload_ses_queue_connection'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wposes_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wposes_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wposes_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wposes_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wposes_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wposes_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wposes_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wposes_dismissed_notices'"
