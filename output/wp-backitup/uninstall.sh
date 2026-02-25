#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp-backitup_dismissed_notices'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_critical_plugins'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_critical_options'"
wp option delete 'wp-backitup_new_install'
wp option delete 'wp-backitup_major_version'
wp option delete 'wp-backitup_minor_version'
wp option delete 'wp-backitup_logging'
wp option delete 'wp-backitup_db_version'
wp option delete 'wp-backitup_backup_batch_size'
wp option delete 'wp-backitup_lite_registration_first_name'
wp option delete 'wp-backitup_license_customer_name'
wp option delete 'wp-backitup_lite_registration_email'
wp option delete 'wp-backitup_license_customer_email'
wp option delete 'wp-backitup_backup_dbtables_batch_size'
wp option delete 'wp-backitup_license_product_id'
wp option delete 'wp-backitup_license_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_delete_all'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'update_core'
wp transient delete 'wpbackitup_admin_notices'
wp transient delete '_wpbackitup_activation_redirect'
wp transient delete 'error-support-email'
wp transient delete 'error-support-ticket'
wp transient delete 'settings_errors'
wp transient delete 'support_ticket_id'
wp transient delete 'support_body'
wp transient delete 'error-support-body'

# Clear Cron Jobs
wp cron event delete 'wpbackitup_weekly_scheduled_events'
wp cron event delete 'wpbackitup_daily_scheduled_events'
wp cron event delete 'wpbackitup_queue_scheduled_jobs'
wp cron event delete 'wpbackitup_aggregate_content_changes'
wp cron event delete 'wpbackitup_check_updates'
wp cron event delete 'wpbackitup_cleanup_old_events'
wp cron event delete 'wpbackitup_aggregate_security'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-backitup_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-backitup_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-backitup_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-backitup_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_background'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_background'"
