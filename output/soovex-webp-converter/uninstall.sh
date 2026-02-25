#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webp_cp_backup_reminder'
wp option delete 'webp_cp_backup_deletion_duration'
wp option delete 'webp_cp_backup_deletion_date'
wp option delete 'webp_cp_enable_backup'
wp option delete 'webp_cp_auto_convert'
wp option delete 'webp_cp_lazy_load'
wp option delete 'webp_cp_compression_quality'
wp option delete 'webp_cp_serve_webp'
wp option delete 'webp_cp_custom_duration'

# Clear Cron Jobs
wp cron event delete 'webp_cp_backup_reminder_cron'
wp cron event delete 'webp_cp_convert_batch_progress'
wp cron event delete 'webp_cp_convert_batch'
wp cron event delete 'webp_cp_delete_backup'
wp cron event delete 'webp_cp_auto_convert_attachment'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webp_cp_backup_reminder_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webp_cp_backup_reminder_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webp_cp_backup_reminder_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webp_cp_backup_reminder_dismissed'"
