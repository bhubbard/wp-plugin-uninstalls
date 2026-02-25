#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'DLCT_LOGconfig_notice_dismissed_20'
wp option delete 'dlct_db_query_log'
wp option delete 'dlct_debug_file_path_generated'
wp option delete 'dlct_debug_file_path'
wp option delete 'dlct_ddebug_file_path'
wp option delete 'dlct_log_file_copied'
wp option delete 'dlct_selected_active_plugins_list'
wp option delete 'safe_mode_status'
wp option delete 'before_safe_mode_active_plugins_list'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'dlct_daily_email_check'

