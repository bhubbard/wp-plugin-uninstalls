#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wpio_settings'
wp option delete 'wpio_optimize_fail_counter'
wp option delete 'wpio_optimization_disabled_notice_dismissed'
wp option delete 'wpio_db_version'
wp option delete 'wpio_indexation_auto'
wp option delete 'wpio_do_activation_redirect'
wp option delete 'wpio_ao_lastRun'
wp option delete 'wpio_is_OptimizeAll'
wp option delete 'wpio_ao_status'
wp option delete 'wpio_err_logs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_irreview_installation_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_irfeedback_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_disallow_feedback'"

# Clear Cron Jobs
wp cron event delete 'wpio_auto_optimize_hourly'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpio-optimizeall-notice-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpio-optimizeall-notice-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpio-optimizeall-notice-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpio-optimizeall-notice-dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
