#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flux_media_optimizer_db_version'
wp option delete 'flux_media_optimizer_options'
wp option delete 'flux-plugins_common_options'

# Delete Transients
wp transient delete 'flux_media_optimizer_notices'
wp transient delete 'flux_media_optimizer_activation_redirect'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'flux_media_optimizer_retry_failed_jobs'
wp cron event delete 'flux_media_optimizer_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
