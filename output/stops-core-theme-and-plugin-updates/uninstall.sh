#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_updates_manager_webhook'
wp option delete 'easy_updates_manager_enable_notices'
wp option delete 'easy_updates_manager_name'
wp option delete 'easy_updates_manager_author'
wp option delete 'easy_updates_manager_url'
wp option delete 'easy_updates_manager_dismiss_dash_notice_until'
wp option delete 'easy_updates_manager_dismiss_eum_notice_until'
wp option delete 'easy_updates_manager_dismiss_page_notice_until'
wp option delete 'easy_updates_manager_dismiss_season_notice_until'
wp option delete 'easy_updates_manager_dismiss_survey_notice_until'
wp option delete 'easy_updates_manager_reset'
wp option delete 'eum_unproven_updates_post_install'
wp option delete 'auto_updater.lock'
wp option delete 'mpsum_log_table_version'
wp option delete 'eum_no_core_email_before'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'easy_updates_manager_%'"
wp option delete 'MPSUM'
wp option delete '_disable_updates'
wp option delete 'easy_updates_manager_dismiss_constant_notices'
wp option delete 'eum_email_flood_control'
wp option delete 'eum_active_pre_restore_plugins'
wp option delete 'eum_active_pre_restore_plugins_multisite'
wp option delete 'eum_readable_email_logging_messages'
wp option delete 'eum_readable_email_logging_messages.lock'
wp option delete 'updraft_task_manager_dbversion'

# Delete Transients
wp transient delete 'eum_all_sites_active_plugins'
wp transient delete 'eum_all_sites_active_themes'
wp transient delete 'eum_plugins_removed_from_directory'
wp transient delete 'eum_core_checked'
wp transient delete 'eum_themes_checked'
wp transient delete 'eum_plugins_checked'
wp transient delete 'MPSUM_PLUGINS'
wp transient delete 'MPSUM_THEMES'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'update_core'
wp transient delete 'eum_plugin_updates'
wp transient delete 'eum_theme_updates'
wp transient delete 'eum_core_updates'
wp transient delete 'mpsum_version_numbers'

# Clear Cron Jobs
wp cron event delete 'eum_notification_updates_monthly'
wp cron event delete 'eum_notification_updates_weekly'
wp cron event delete 'wp_maybe_auto_update'
wp cron event delete 'wp_update_themes'
wp cron event delete 'wp_update_plugins'
wp cron event delete 'wp_version_check'
wp cron event delete 'eum_clear_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mpsum_dashboard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mpsum_dashboard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mpsum_dashboard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mpsum_dashboard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mpsum_items_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mpsum_items_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mpsum_items_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mpsum_items_per_page'"
