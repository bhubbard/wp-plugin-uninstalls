#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'content_guard_pro_settings'
wp option delete 'content_guard_pro_rule_pack_version'
wp option delete 'content_guard_pro_rule_pack_last_update'
wp option delete 'content_guard_pro_setup_completed'
wp option delete 'content_guard_pro_version'
wp option delete 'content_guard_pro_first_activation'
wp option delete 'cgpro_installation_id'

# Delete Transients
wp transient delete 'content_guard_pro_admin_notice'
wp transient delete 'content_guard_pro_allowlist_pattern'
wp transient delete 'content_guard_pro_denylist_patterns'
wp transient delete 'content_guard_pro_activation_redirect'
wp transient delete 'content_guard_pro_clear_data_success'
wp transient delete 'content_guard_pro_clear_data_error'
wp transient delete 'content_guard_pro_cleanup_success'
wp transient delete 'content_guard_pro_cleanup_error'
wp transient delete 'content_guard_pro_activation_registered'
wp transient delete 'content_guard_pro_scan_progress'
wp transient delete 'content_guard_pro_scan_completed'
wp transient delete 'content_guard_pro_db_creation_log'
wp transient delete 'content_guard_pro_admin_notices'
wp transient delete 'content_guard_pro_active_scan_progress'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_content_guard_pro_scan_progress_%' OR option_name LIKE '_site_transient_content_guard_pro_scan_progress_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_content_guard_pro_pending_scan_%' OR option_name LIKE '_site_transient_content_guard_pro_pending_scan_%'"
wp transient delete 'content_guard_pro_active_scan_id'
wp transient delete 'content_guard_pro_db_size_check'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'content_guard_pro_cleanup_old_data'
wp cron event delete 'content_guard_pro_daily_digest'
wp cron event delete 'content_guard_pro_scheduled_scan'
wp cron event delete 'content_guard_pro_async_activation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_guard_pro_dismissed_critical_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_guard_pro_dismissed_critical_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_guard_pro_dismissed_critical_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_guard_pro_dismissed_critical_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_guard_pro_last_dismissed_critical_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_guard_pro_last_dismissed_critical_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_guard_pro_last_dismissed_critical_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_guard_pro_last_dismissed_critical_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_guard_pro_dismissed_welcome_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_guard_pro_dismissed_welcome_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_guard_pro_dismissed_welcome_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_guard_pro_dismissed_welcome_notice'"
